/**Terraform Main*/

# Terraform module for creating a Vertex AI notebook instance

resource "google_project_service" "notebooks" {
  provider           = google
  service            = "notebooks.googleapis.com"
  disable_on_destroy = false

}

resource "google_notebooks_instance" "notebook_instance" {
  project      = var.project_id
  name         = var.notebook_name
  provider     = google
  location     = var.location
  machine_type = "e2-medium"

  vm_image {
    project      = "deeplearning-platform-release"
    image_family = "tf-latest-gpu"
  }

  depends_on = [
    google_project_service.notebooks
  ]
}