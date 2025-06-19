resource "proxmox_vm_qemu" "testing-1" {
    name = "testing-1"
    desc = "Server Testing 1"
    agent = 1
    target_node = "pi5"
    qemu_os = "other"  # default other
    bios = "ovmf"
  

    define_connection_info = false

    # -- only important for full clone
    vmid = 201
    clone = "alma9-Template"
    # full_clone = true
    full_clone = true

    # -- boot process
    onboot = true
    startup = ""
    automatic_reboot = true  # refuse auto-reboot when changing a setting
    cpu {
    cores = 2
    sockets = 1
    }
    memory = 2048

    network {
        id = 0
        bridge = "vmbr0"
        model  = "virtio"
    }

    scsihw = "virtio-scsi-pci"  # default virtio-scsi-pci

 disk {
    slot    = "scsi0"
    storage = "local"  # Storage for the cloned disk
    size    = "10G"        # Can resize during clone (optional)
    type    = "disk"
  }

disk {
  type    = "cloudinit"
  storage = "local"         # Use 'storage' instead of 'disk_file' for cloudinit
  slot    = "scsi1"         # Recommended to use scsi1 for cloudinit
}


    # -- lifecycle
    lifecycle {
        ignore_changes = [
            disk,
            vm_state
        ]
    }
    
    # Cloud Init Settings 
    ipconfig0 = "ip=192.168.1.40/24,gw=192.168.1.1"
    nameserver = "192.168.1.9"
    ciuser = "sunil"
    ciupgrade = "1"
    sshkeys = var.PUBLIC_SSH_KEY
}