# <h1>Example Three Tier Application with Terraform</h1>

## <h2> These Terraform plans provide an example of how you can configure a Three Tier Application with Cisco ACI and Terraform. It uses an external variables file so that you can substitute values as needed. </h2>

### <h3> Terraform does the following: </h3>
        * Creates a Tenant
        * Creates a VRF
        * Creates a 3 Bridge Domains(BD) and BD subnets
        * Creates an Application Profile
        * Creates 3 EPGs - web/app/db 
        * Creates contracts
        * Creates filters and filter entries
        * Creates contract subjects and binds them to contracts
        * Binds the EPGs to the contracts
