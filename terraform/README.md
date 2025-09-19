KPZ-194 Dataform Terraform

Prereqs
- gcloud CLI authenticated to the target project
- Terraform >= 1.4, Google provider >= 5.28

What this does
- Enables required APIs (Dataform, BigQuery)
- Creates a Dataform repository using google-beta provider
- Seeds repository content using initial_commit (imports local files)
- Does not modify IAM for your execution service account (assumed pre-configured)

Inputs
Create a terraform.tfvars file:

project_id = "cm-da-bs-yamahamotor"           # from workflow_settings.yaml defaultProject
region     = "us-central1"
location   = "us-central1"
repo_name  = "kpz-194-dataform"

default_project            = "cm-da-bs-yamahamotor"
default_dataset            = "KPZ194-terraform"
default_assertion_dataset  = "KPZ194-terraform-assertions"
dataform_core_version      = "3.0.26"

dataform_execution_service_account = "223462991873-compute@developer.gserviceaccount.com"

Usage
terraform init
terraform apply -auto-approve

Notes
- The folder "inclues" is imported as "includes/macros.js" to match the require path inside SQLX.
- Ensure the execution service account already has necessary roles; this config does not grant any.

