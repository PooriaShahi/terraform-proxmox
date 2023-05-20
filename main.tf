resource "proxmox_lxc" "basic" {
  target_node  = var.target_node
  hostname     = var.hostname
  ostemplate   = var.ostemplate
  password     = var.password
  unprivileged = var.unprivileged

  cores  = var.cores
  memory = var.memory

  rootfs {
    storage = var.rootfs.storage
    size    = var.rootfs.size
  }

  network {
    name   = var.network.name
    bridge = var.network.bridge
    ip     = var.network.ip[count.index]
    gw     = var.network.gw
  }

  ssh_public_keys = var.ssh_public_key
  start           = var.start

  count = var.machine_counts
}