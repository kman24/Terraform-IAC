# Terraform module variables for creating a Vertex AI notebook instance

variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "notebook_name" {
  description = "Name of the Vertex AI notebook instance"
  type        = string
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

variable "location" {
  description = "Storage location for the storage bucket"
  type        = string
  default     = "us-west2-b"
}
