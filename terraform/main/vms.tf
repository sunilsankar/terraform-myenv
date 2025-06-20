module "vm1"{
    source = "git::https://github.com/sunilsankar/tf-module-proxmox.git?ref=0.1.1"
    name = "vm1"
    description = "Used for testing"
    vmid = 100
    templatename = "alma9-Template"
    cores = 1
    memory = 512
    disksize = "12G"
    ipaddress = "192.168.1.42"
    PUBLIC_SSH_KEY = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDON13U0/qvu9XcxGYEadjR2oWIgYjVCXycCpz/qrI1Y sunil@Sunils-Mac-mini.local"
}
module "vm2"{
    source = "git::https://github.com/sunilsankar/tf-module-proxmox.git?ref=0.1.1"
    name = "vm2"
    description = "Used for testing2"
    vmid = 101
    templatename = "alma10-Template"
    cores = 1
    memory = 512
    disksize = "10G"
    ipaddress = "192.168.1.43"
    PUBLIC_SSH_KEY = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDON13U0/qvu9XcxGYEadjR2oWIgYjVCXycCpz/qrI1Y sunil@Sunils-Mac-mini.local"
}
module "vm3"{
    source = "git::https://github.com/sunilsankar/tf-module-proxmox.git?ref=0.1.1"
    name = "vm3"
    description = "Used for testing3"
    vmid = 102
    templatename = "ubuntu24.04-Template"
    cores = 1
    memory = 512
    disksize = "5G"
    ipaddress = "192.168.1.44"
    PUBLIC_SSH_KEY = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDON13U0/qvu9XcxGYEadjR2oWIgYjVCXycCpz/qrI1Y sunil@Sunils-Mac-mini.local"
}
