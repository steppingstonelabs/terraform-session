
# Add an A record to the domain for staging.nss.team
resource "digitalocean_record" "www" {
  domain = "nss.team"
  type   = "A"
  name   = "staging"
  value  = digitalocean_droplet.www-1.ipv4_address
}

resource "digitalocean_record" "db_a" {
  domain = "nss.team"
  type   = "A"
  name   = "knowledgebase"
  value  = digitalocean_database_cluster.postgres_db.host
}