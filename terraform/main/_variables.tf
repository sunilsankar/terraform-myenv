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
