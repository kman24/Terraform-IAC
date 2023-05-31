# Terraform module outputs for the Vertex AI notebook instance

output "notebook_instance_name" {
  description = "Name of the Vertex AI notebook instance"
  value       = google_notebooks_instance.notebook_instance.name
}
