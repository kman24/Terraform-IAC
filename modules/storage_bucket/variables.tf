/**Variables Main*/

# Terraform module variables for creating a GCP storage bucket

variable "project_id" {
  description = "GCP project ID"
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

variable "location" {
  description = "Storage location for the storage bucket"
  type        = string
  default     = "eu"
}