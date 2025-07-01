provider "proxmox" {
    pm_api_url          = var.PRX_URL
    pm_api_token_id     = var.PRX_USER
    pm_api_token_secret = var.PRX_TOKEN
    pm_tls_insecure     = true
}

provider "pihole" {
  url      = var.PI_URL
  password = var.PIHOLE_PASSWORD
}