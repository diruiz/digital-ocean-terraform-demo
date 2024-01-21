# Create a new domain
resource "digitalocean_domain" "diegokbsdomain" {
  name = "diegokbstestdomain.com"
}

# Add a record to the domain
resource "digitalocean_record" "www" {
  domain = "${digitalocean_domain.diegokbsdomain.name}"
  type   = "A"
  name   = "www"
  ttl    = "10"
  value  = "${digitalocean_loadbalancer.public.ip}"
}