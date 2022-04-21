# Create Leaf Switch Profile
resource "aci_leaf_profile" "lsp_204" {
    name = "204"
    leaf_selector {
        name = "204"
        switch_association_type = "range"
        node_block {
            name  = "204"
            from_ = "204"
            to_   = "204"
        }
    }
}

# Create a leaf interface profile
resource "aci_leaf_interface_profile" "aci_lip" {
    description = "Created by Terraform"
    name        = "tf_leaf_profile"
}


# Create an access port selector
resource "aci_access_port_selector" "tf_port_selector" {
    leaf_interface_profile_dn = aci_leaf_interface_profile.aci_lip.id
    description               = "Created by Terraform"
    name                      = "tf_port_selector"
    access_port_selector_type = "range"
}

resource "aci_access_port_block" "tf_port_block" {
  access_port_selector_dn = aci_access_port_selector.tf_port_selector.id
  name                    = "tf_port_block"
  description             = "Create by Terraform"
  from_card               = "1"
  from_port               = "1"
  to_card                 = "1"
  to_port                 = "5"
}
