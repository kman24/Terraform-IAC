
# GCP Storage Bucket Module

This module is responsible for creating a GCP storage bucket.

## Usage

module "storage_bucket" {
  source      = "./modules/storage_bucket"
  project_id  = var.project_id
  bucket_name = var.bucket_name
  storage_class = var.storage_class
}
