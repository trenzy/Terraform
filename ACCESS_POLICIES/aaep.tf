resource "aci_attachable_access_entity_profile" "tf_aaep" {
  name        = "aaep_test"
  description = "attachable_access_entity_profile created while acceptance testing"
  relation_infra_rs_dom_p = [aci_physical_domain.PhyDom.id]
}
