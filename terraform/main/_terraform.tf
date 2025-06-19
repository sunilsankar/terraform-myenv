terraform {
 required_version = "1.12.2"
 required_providers {
        proxmox = {
            source = "telmate/proxmox"
            version = "3.0.2-rc01"
        }
    }
    
  #backend "http" {
  #  address        = "https://api.tfstate.dev/github/v1"
  #  lock_address   = "https://api.tfstate.dev/github/v1/lock"
  #  unlock_address = "https://api.tfstate.dev/github/v1/lock"
  #  lock_method    = "PUT"
  #  unlock_method  = "DELETE"
  #  username       = "packworkx/mytffile"
  #}
  
}