/**outputs */

# Terraform module outputs for the GCP storage bucket

output "bucket_name" {
  description = "Name of the storage bucket"
  value       = google_storage_bucket.bucket.name
}
