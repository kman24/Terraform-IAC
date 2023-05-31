

# Terraform module outputs for the BigQuery table

output "table_id" {
  description = "ID of the BigQuery table"
  value       = google_bigquery_table.default.table_id
}
