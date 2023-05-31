

# Terraform module outputs for the BigQuery table

output "job_id" {
  description = "ID of the BigQuery table load"
  value       = google_bigquery_job.load_data.job_id
}
