resource "digitalocean_droplet" "www-1" {
  image = "ubuntu-20-04-x64"
  name = "www-1"
  region = "nyc3"
  size = "s-1vcpu-2gb" //https://slugs.do-api.dev/
  ssh_keys = [
    data.digitalocean_ssh_key.digitalocean.id
  ]

  connection {
    host = self.ipv4_address
    user = "root"
    type = "ssh"
    private_key = file(var.pvt_key)
    timeout = "2m"
  }

  provisioner "file" {
    source      = "${var.install_script}"
    destination = "/tmp/install.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "export PATH=$PATH:/usr/bin",
      "sudo apt update -y",
      "sudo apt install -y nginx git curl python3-pip postgresql postgresql-contrib",
      "chmod +x /tmp/install.sh",
      "/tmp/install.sh -c=${var.client} -s=${var.secret} -p=${var.db_pwd} -d='${var.django_secret}' -h=\"${var.allowed_hosts},${digitalocean_droplet.www-1.ipv4_address}\" -k=${var.slack_token} -w=${var.su_pwd} -u=${var.su}"
    ]
  }
}
