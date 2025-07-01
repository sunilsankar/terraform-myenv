resource "pihole_dns_record" "record1" {
  domain = "${var.environment}-vm1.sunil.cc"
  ip     = "192.168.1.40"
  depends_on = [module.vms.dev-vm1]
}

resource "pihole_dns_record" "record2" {
  domain = "${var.environment}-vm2.sunil.cc"
  ip     = "192.168.1.41"
  depends_on = [module.vms.dev-vm2]
}

resource "pihole_dns_record" "record3" {
  domain = "${var.environment}-vm3.sunil.cc"
  ip     = "192.168.1.42"
  depends_on = [module.vms.dev-vm3]
}
