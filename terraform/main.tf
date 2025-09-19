terraform {
  required_version = ">= 1.4.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 5.28.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = ">= 5.28.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

provider "google-beta" {
  project = var.project_id
  region  = var.region
}

resource "google_dataform_repository" "dataform_repo" {
  provider = google-beta
  project  = var.project_id
  region   = var.location
  name     = var.repo_name
}