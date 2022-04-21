# <h1>Terraform plans for provisioning Fabric Access Policies</h1>

These plans cover provisioning of ACI fabric policies. Specifically the following
items:

- Creating a VLAN pool (aci_vlan_pool & aci_ranges)
- Creating a Physical Domain (aci_physical_domain)
- Create a new AAEP (aci_attachable_access_entity_profile)
- Create a new AAEP (aci_attachable_access_entity_profile)
- Create new interface and access port policies (aci_fabric_if_pol, aci_lldp_interface_policy,
aci_cdp_interface_policy, aci_leaf_access_port_policy_group)
- Create lef policies (aci_leaf_profile, aci_leaf_interface_profile, aci_access_port_selector,
aci_access_port_block)

main.tf configures the required provider as well information for the APIC. Removed to protect the innocent. 

I will update this to use variables to substitue values.

This was tested with Terraform 1.0.11 with ACI provider version 2.1.0.
