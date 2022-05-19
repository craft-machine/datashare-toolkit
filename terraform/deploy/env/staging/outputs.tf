output "ds_ui_cloud_run_url" {
  value = module.datashare-application[0].ds_ui_cloud_run_url
}

output "ds_api_cloud_run_url" {
  value = module.datashare-application[0].ds_api_cloud_run_url
}

output "ds_api_gateway_address" {
  value = module.datashare-application[0].ds_api_gateway_address
}