resource "aci_vlan_pool" "tf_vlan_pool" {
  name       = "TF-VLAN-POOL"
  alloc_mode = "static"
}

resource "aci_ranges" "tf_pool_range" {
  vlan_pool_dn = aci_vlan_pool.tf_vlan_pool.id
  from         = "vlan-121"
  to           = "vlan-130"
  alloc_mode   = "inherit"
  role         = "external"
}
