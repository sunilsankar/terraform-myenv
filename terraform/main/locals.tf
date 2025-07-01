locals {
vms = {
 "${var.environment}-vm1" = {
    name = "${var.environment}-vm1.sunil.cc"
    description = "Ansible Server"
    vmid = var.vmid[0]
    templatename = "debian12-Template"
    tags = ["dev", "ansible"]
    cores = 1
    memory = 1024
    disksize = "12G"
    ipaddress = "192.168.1.40"
    PUBLIC_SSH_KEY = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDON13U0/qvu9XcxGYEadjR2oWIgYjVCXycCpz/qrI1Y sunil@Sunils-Mac-mini.local"
}
"${var.environment}-vm2" = {
    name = "${var.environment}-vm2.sunil.cc"
    description = "Application Server"
    tags = ["dev", "app"]
    vmid = var.vmid[1]
    templatename = "alma10-Template"
    cores = 1
    memory = 512
    disksize = "12G"
    ipaddress = "192.168.1.41"
    PUBLIC_SSH_KEY = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDON13U0/qvu9XcxGYEadjR2oWIgYjVCXycCpz/qrI1Y sunil@Sunils-Mac-mini.local"
}
"${var.environment}-vm3" = {
    name = "${var.environment}-vm3.sunil.cc"
    description = "DB Server"
    tags = ["dev", "db"]
    vmid = var.vmid[2]
    templatename = "alma10-Template"
    cores = 1
    memory = 512
    disksize = "12G"
    ipaddress = "192.168.1.42"
    PUBLIC_SSH_KEY = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDON13U0/qvu9XcxGYEadjR2oWIgYjVCXycCpz/qrI1Y sunil@Sunils-Mac-mini.local"
}
}
}
