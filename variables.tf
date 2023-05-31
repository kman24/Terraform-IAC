/**Variables */

# Terraform variables

variable "project_id" {
  description = "GCP project ID"
  type        = string
  default     = "sopsai"
}

variable "organization_id" {
  description = "ORG ID"
  type        = string
  default     = "sopsai"
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "eu (multiple regions in European Union)"
}

variable "location" {
  description = "GCP location"
  type        = string
  default     = "eu (multiple regions in European Union)"
}

variable "billing_account" {
  description = "GCP billing account ID"
  type        = string
  default     = "sopsai"
}

variable "bucket_name" {
  description = "Name of the storage bucket"
  type        = string
  default     = "sopsai"
}

variable "storage_class" {
  description = "Storage class for the storage bucket"
  type        = string
  default     = "STANDARD"
}

variable "dataset_id" {
  description = "ID of the BigQuery dataset"
  type        = string
  default     = "customer"
}

variable "table_id" {
  description = "ID of the BigQuery table"
  type        = string
  default     = "customer"
}

variable "notebook_name" {
  description = "Name of the Vertex AI notebook instance"
  type        = string
  default     = "customer-ai"
}

variable "machine_type" {
  description = "Machine type for the Vertex AI notebook instance"
  type        = string
  default     = "n1-standard-2"
}

variable "accelerator" {
  description = "Accelerator type for the Vertex AI notebook instance"
  type        = string
  default     = ""
}

variable "boot_disk_size" {
  description = "Boot disk size (in GB) for the Vertex AI notebook instance"
  type        = number
  default     = 100
}

