variable "org_name" {
  type        = string
  description = "Intersight Organization name"
}

variable "name" {
  type        = string
  description = "Name of the Worker Profile to be created.  i.e small"
}
variable "cpu" {
  type        = number
  description = "Number of CPU allocated to the virtual machine."
  default     = 4
  nullable    = false
}
variable "memory" {
  type        = number
  description = "Amount of memory assigned to the virtual machine in MiB."
  default     = 16384
  nullable    = false
}
variable "disk_size" {
  type        = number
  description = "Amount of disk to be assigned to the virtual machine in GiB."
  default     = 40
  nullable    = false
}
variable "description" {
  type        = string
  default     = ""
  description = "Description to be used to describe the worker profile."
  nullable    = false
}
variable "tags" {
  type    = list(map(string))
  default = []
}