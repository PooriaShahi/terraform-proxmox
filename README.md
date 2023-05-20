# Terraform Proxmox Example
This code is based on Proxmox Provider. For more information refer to the [official documentation](https://registry.terraform.io/providers/Telmate/proxmox/latest/docs/resources/lxc)


# Requirements

## Terraform User

Commands for creating **Terraform user** in a nutshell:

```
pveum role add TerraformProv -privs "Datastore.AllocateSpace Datastore.Audit Pool.Allocate Sys.Audit Sys.Console Sys.Modify VM.Allocate VM.Audit VM.Clone VM.Config.CDROM VM.Config.Cloudinit VM.Config.CPU VM.Config.Disk VM.Config.HWType VM.Config.Memory VM.Config.Network VM.Config.Options VM.Migrate VM.Monitor VM.PowerMgmt"
pveum user add terraform-prov@pve --password <password>
pveum aclmod / -user terraform-prov@pve -role TerraformProv
```

## Terraform User API_TOKEN
1. Create API_TOKEN: **Login to Proxmox > Datacenter > Permissions > API Tokens > Add > Select Terraform User + Give some Token ID + (Important) Uncheck Privilege Sepration**
2. Export **PM_URL_API, PM_API_TOKEN_ID, PM_API_TOKEN_SECRET** variables

## Creating a LXC Container
1. Initialize terraform 
```
terraform init
```

2. Copy **terraform.tfvars.example** file to **terraform.tfvars** and fill the variables
3. Format and Validate your variables
```
terraform fmt
terraform validate
```
4. Apply your IaC
```
terraform apply
```
5. Enjoy ;)


# Contribute
Feel free to contribute.