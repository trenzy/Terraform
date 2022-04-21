resource "aci_physical_domain" "PhyDom" {
  depends_on                = [aci_vlan_pool.tf_vlan_pool]
  name                      = "PhyDom"
  relation_infra_rs_vlan_ns = aci_vlan_pool.tf_vlan_pool.id
}
