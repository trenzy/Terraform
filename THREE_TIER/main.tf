/* 
   This configures the required provider plugins for ACI as well 
   as the ACI provider. We are specifying the exact version of the ACI 
   plugin that we want installed but you can remove this to install the latest
   one. 
   All the other configurations are in separated .tf files.
*/

terraform {
  required_providers {
    aci = {
      source  = "CiscoDevNet/aci"
      version = "2.2.1"
    }
  }
}

/* Provider configuration with signature-based authentication. */
provider "aci" {
  # cisco-aci user name (local User)
  username = "tform"
  # cisco-aci signature based cert
  private_key = "my.key"
  cert_name   = "my.crt"
  # cisco-aci url
  url      = "https://4.3.2.31/"
  insecure = true
}
