variable "target_node" {
  type        = string
  description = "A string containing the cluster node name"
}
variable "hostname" {
  type        = string
  description = "Specifies the host name of the container."
}
variable "ostemplate" {
  default     = "local:vztmpl/ubuntu-20.04-standard_20.04-1_amd64.tar.gz"
  type        = string
  description = "The volume identifier that points to the OS template or backup file."
}
variable "password" {
  type        = string
  description = "Sets the root password inside the container."
}
variable "unprivileged" {
  default     = true
  type        = bool
  description = "A boolean that makes the container run as an unprivileged user."
}

variable "cores" {
  type        = number
  description = "The number of cores assigned to the container"
}
variable "memory" {
  type        = number
  description = "A number containing the amount of RAM to assign to the container (in MB)."
}


variable "rootfs" {
  type = object({
    storage = string
    size    = string
  })
  description = "An object for configuring the root mount point of the container. Can only be specified once."
}

variable "network" {
  type = object({
    name   = string
    bridge = string
    ip     = list(string)
    gw     = string
  })

  description = "An object defining a network interface for the container"
}

variable "ssh_public_key" {
  type        = string
  description = "Multi-line string of SSH public keys that will be added to the container"
}
variable "start" {
  default     = true
  type        = bool
  description = "A boolean that determines if the container is started after creation"
}

variable "machine_counts" {
  default     = 1
  type        = number
  description = "Number of machines that must be create"
}