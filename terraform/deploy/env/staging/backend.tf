terraform {
  backend "gcs" {
    bucket = "craft-gcp-tfstate"
  }
}

resource "google_storage_bucket" "craft_gcp_tfstate" {
  name     = "craft-gcp-tfstate"
  location = "us-east1-b"
  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      num_newer_versions = 5
    }
  }
}