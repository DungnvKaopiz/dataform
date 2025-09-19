variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "project_number" {
  description = "GCP project number (optional, can be derived)"
  type        = string
  default     = null
}

variable "region" {
  description = "Default provider region"
  type        = string
  default     = "us-central1"
}

variable "location" {
  description = "Dataform location/region"
  type        = string
  default     = "us-central1"
}

variable "repo_name" {
  description = "Repository name for Dataform and CSR"
  type        = string
  default     = "kpz-194-dataform"
}

variable "default_project" {
  description = "Default BigQuery project for Dataform compilation"
  type        = string
}

variable "default_dataset" {
  description = "Default BigQuery dataset/schema for Dataform compilation"
  type        = string
}

variable "default_assertion_dataset" {
  description = "Default dataset for assertions"
  type        = string
}

variable "dataform_core_version" {
  description = "Dataform core version"
  type        = string
  default     = "3.0.26"
}

variable "table_prefix" {
  description = "Optional table prefix"
  type        = string
  default     = ""
}

variable "schema_suffix" {
  description = "Optional schema suffix"
  type        = string
  default     = ""
}

variable "dataform_execution_service_account" {
  description = "Custom service account for Dataform execution"
  type        = string
}


