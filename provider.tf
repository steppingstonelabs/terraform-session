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
variable "pvt_key" {}

variable "allowed_hosts" {}
variable "slack_token" {}
variable "client" {}
variable "secret" {}
variable "django_secret" {}
variable "db_host" {}
variable "db_user" {}
variable "db_name" {}
variable "db_pwd" {}
variable "su" {}
variable "su_pwd" {}
variable "install_script" {}

provider "digitalocean" {
  token = var.do_token
}

data "digitalocean_ssh_key" "digitalocean" {
  name = "digitalocean"
}
