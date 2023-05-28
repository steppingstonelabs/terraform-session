# This establishes which cloud provider API to use
terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

# These capture and store the `-var` paramater values when you run `plan`
variable "do_token" {}
variable "slack_token" {}
variable "client" {}
variable "secret" {}
variable "django_secret" {}
variable "db_pwd" {}
variable "pvt_key" {}
variable "su" {}
variable "su_pwd" {}
variable "install_script" {}
variable "allowed_hosts" {}

provider "digitalocean" {
  token = var.do_token
}

data "digitalocean_ssh_key" "digitalocean" {
  name = "digitalocean"
}
