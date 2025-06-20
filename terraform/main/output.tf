output "vm_details" {
  description = "Hostnames and IPs of all VMs"
  value = {
    vm1 = {
      hostname  = module.vm1.name      # References input `name`
      ipaddress = module.vm1.ipaddress  # References input `ipaddress`
    }
    vm2 = {
      hostname  = module.vm2.name
      ipaddress = module.vm2.ipaddress
    }
    vm3 = {
      hostname  = module.vm3.name
      ipaddress = module.vm3.ipaddress
    }
  }
}
