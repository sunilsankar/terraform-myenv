variable "PRX_URL" {
  type = string
}

variable "PRX_USER" {
  type = string
}

variable "PRX_TOKEN" {
  type      = string
  sensitive = true
}

variable "PUBLIC_SSH_KEY" {
  type = string
  sensitive = true
}

variable "environment" {
  default = "dev"
  description = "Development Environment"
}
variable "vmid" {
 description = "List of VM ids"
 type = list(number)
 default = [100,101,102,103]
}
