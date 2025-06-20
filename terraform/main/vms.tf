module "vms"{
    for_each = local.vms
    source = "git::https://github.com/sunilsankar/tf-module-proxmox.git?ref=0.1.1"
    name = each.value["name"]
    description = each.value["description"]
    vmid = each.value["vmid"]
    templatename = each.value["templatename"]
    cores = each.value["cores"]
    memory = each.value["memory"]
    disksize = each.value["disksize"]
    ipaddress = each.value["ipaddress"]
    PUBLIC_SSH_KEY = each.value["PUBLIC_SSH_KEY"]
}

