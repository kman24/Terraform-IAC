/**outputs */

# Terraform module outputs for the GCP project

# Terraform module outputs for the BigQuery dataset

output "dataset_id" {
  description = "ID of the BigQuery dataset"
  value       = google_bigquery_dataset.dataset.dataset_id
}
