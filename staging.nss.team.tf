
# Add an A record to the domain for www.example.com.
resource "digitalocean_record" "www" {
  domain = "nss.team"
  type   = "A"
  name   = "staging"
  value  = digitalocean_droplet.www-1.ipv4_address
}