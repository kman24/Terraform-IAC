/**Terraform Main*/

# Terraform module for creating a BigQuery dataset

resource "google_bigquery_dataset" "dataset" {
  dataset_id = var.dataset_id
  project    = var.project_id
}
