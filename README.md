# fortigate-fw-terraform

```
export "FORTIOS_ACCESS_HOSTNAME"="192.168.1.1"
export "FORTIOS_INSECURE"="true"
export "FORTIOS_ACCESS_TOKEN"="<token>"
```




## Save the state in azure blob storage
```bash
ARM_ACCESS_KEY=key
terraform init `
  -backend-config="resource_group_name=rg001" `
  -backend-config="storage_account_name=storageaccountname" `
  -backend-config="container_name=tf-state-firewall" `
  -backend-config="key=tf_deploy_fortigate.tfstate"
```

## Manual Steps
Issues with the tf module that dont update when configured. These steps will have to be done manually.
### Network Interfaces 
-  
