#Importing the Organization MOID
data "intersight_organization_organization" "this" {
  name = var.org_name
}
#Importing the Kubernetes Version available
data "intersight_kubernetes_version" "this" {

  name = var.iksVersionName
}
resource "intersight_kubernetes_version_policy" "this" {

  name        = var.policyName
  description = var.description
  nr_version {
    object_type = "kubernetes.Version"
    moid        = data.intersight_kubernetes_version.this.results.0.moid
  }
  dynamic "tags" {
    for_each = var.tags
    content {
      key   = tags.value["key"]
      value = tags.value["value"]
    }
  }

  organization {
    object_type = "organization.Organization"
    moid        = data.intersight_organization_organization.this.results.0.moid
  }
}