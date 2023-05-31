/**Variables Main*/

# Terraform module variables for creating a BigQuery dataset

variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "dataset_id" {
  description = "ID of the BigQuery dataset"
  type        = string
}
