
# BigQuery Dataset Module

This module is responsible for creating a BigQuery dataset.

## Usage

module "bigquery_dataset" {
  source     = "./modules/bigquery_dataset"
  project_id = var.project_id
  dataset_id = var.dataset_id
}