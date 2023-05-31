/**Variables Main*/

# Terraform module variables for loading a BigQuery table

variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "dataset_id" {
  description = "ID of the BigQuery dataset"
  type        = string
}

variable "table_id" {
  description = "ID of the BigQuery table"
  type        = string 
  default  = "customer"  
}