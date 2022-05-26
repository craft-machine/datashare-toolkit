## terraform workspace select default
## terraform apply -auto-approve

 use_impersonation              = false
# impersonated_service_account   =
 project_id                     = "craftco-staging"
 environment_name               = "staging"
 auth_domain                    = "craftco-staging.firebaseapp.com"
 secret_name_prefix             = "craft_staging_datashare"
 tag                            = "2.0.0.0"

## If using Cloud DNS, and you want the Terraform script to create the A records in the defined dns_zone, include the following:
# deploy_custom_domains          = true
# update_cloud_dns               = true
# dns_zone                       =
# create_static_api_ip_address   = false
# api_domain                     =
# ui_domain                      =