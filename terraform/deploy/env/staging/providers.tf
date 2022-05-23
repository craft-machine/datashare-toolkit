locals {
  service_account_key = var.install_service_account_key != null ? file(var.install_service_account_key) : null
}

provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
  credentials  = var.use_impersonation == false ? local.service_account_key : null
  access_token = var.use_impersonation == false ? null : data.google_service_account_access_token.default[0].access_token
  // request_timeout = "60s"
}

provider "google" {
  alias = "impersonation"
  scopes = [
    "https://www.googleapis.com/auth/cloud-platform",
    "https://www.googleapis.com/auth/userinfo.email",
  ]
}