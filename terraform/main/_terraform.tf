terraform {
 required_version = "1.12.2"
 required_providers {
        proxmox = {
            source = "telmate/proxmox"
            version = "3.0.2-rc01"
        }
    }

  #backend "remote" {
  #  hostname = "app.terraform.io"
  #  organization = "DEV-Works"

   # workspaces {
   #   name = "terraform-myenv"
   # }
  #}
}