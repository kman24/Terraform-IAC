/**Terraform Main*/

# Terraform main configuration

terraform {
  required_version = ">= 1.0.0"
}

provider "google" {
  credentials = file("credentials.json")
  project     = var.project_id
  region      = var.region
}

module "storage_bucket" {
  source         = "./modules/storage_bucket"
  project_id     = var.project_id
  bucket_name    = var.bucket_name
  storage_class  = var.storage_class
}


module "bigquery_dataset" {
  source     = "./modules/bigquery_dataset"
  project_id = var.project_id
  dataset_id = var.dataset_id
}

module "bigquery_table" {
  source     = "./modules/bigquery_table"
  project_id = var.project_id
  dataset_id = var.dataset_id
  table_id = var.table_id
}

module "bigquery_table_load" {
  source     = "./modules/bigquery_table _load"
  project_id = var.project_id
  dataset_id = var.dataset_id
  table_id = var.table_id
}

module "vertex_ai_notebook" {
  source          = "./modules/vertex_ai_notebook"
  project_id      = var.project_id
  notebook_name   = var.notebook_name
  machine_type    = var.machine_type
  accelerator     = var.accelerator
  boot_disk_size  = var.boot_disk_size
}