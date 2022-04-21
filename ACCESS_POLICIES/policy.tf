resource "aci_fabric_if_pol" "tf_link_policy" {
  name        = "tf_10G_ON"
  description = "Created by Terraform"
  auto_neg    = "on"
  fec_mode    = "inherit"
  link_debounce  = "100"
  speed       = "10G"
}

resource "aci_lldp_interface_policy" "tf_lldp_policy" {
  description = "Created by Terraform"
  name        = "TF_LLDP_ON"
  admin_rx_st = "enabled"
  admin_tx_st = "enabled"
}

resource "aci_cdp_interface_policy" "tf_cdp_policy" {
  description = "Created by Terraform"
  name        = "TF_CDP_ENABLE"
  admin_st    = "enabled"
}

resource "aci_leaf_access_port_policy_group" "tf_access_port_policy_group" {
  description = "Created by Terraform"
  name        = "TF_10G_access"
  relation_infra_rs_lldp_if_pol = aci_lldp_interface_policy.tf_lldp_policy.id
  relation_infra_rs_cdp_if_pol = aci_cdp_interface_policy.tf_cdp_policy.id
  relation_infra_rs_att_ent_p = aci_attachable_access_entity_profile.tf_aaep.id
  relation_infra_rs_h_if_pol = aci_fabric_if_pol.tf_link_policy.id
}
