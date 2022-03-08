variable "name" {
  type        = string
  description = "Name of the Node Profile to be created."
}
variable "description" {
  type        = string
  description = "Descripton of the Node Profile."
  default     = ""
  nullable    = false
}
variable "action" {
  default     = "No-op"
  description = "User Initiated action.  Options are {{Delete|Deploy|Ready|No-op|Unassign}."
  type        = string
  nullable    = false
}
variable "profile_type" {
  type        = string
  description = "Type of profile to be created. i.e Master or Worker"
  default     = ""
  nullable    = false
}
variable "min_size" {
  type        = number
  description = "Minimum size for node profile."
}
variable "max_size" {
  type        = number
  description = "Maximum size for node profile."
}

variable "ip_pool_moid" {
  type        = string
  description = "MOID derived from the IP Pool that is being consumed."
}
variable "version_moid" {
  type        = string
  description = "MOID derived from the Version Policy that is being consumed."
}
variable "cluster_moid" {
  type        = string
  description = "MOID derived from the Cluster that is being consumed."
}
variable "tags" {
  type    = list(map(string))
  default = []
}