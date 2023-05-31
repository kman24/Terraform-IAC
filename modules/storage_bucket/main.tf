/**Terraform Main*/

# Terraform module for creating a GCP project

resource "google_storage_bucket" "bucket" {
  name          = var.bucket_name
  project       = var.project_id
  location      = var.location
  storage_class = var.storage_class
}

resource "google_project_iam_binding" "bucket_iam_binding" {
  project = var.project_id
  role    = "roles/storage.objectViewer"

  members = [
    "serviceAccount:${var.project_id}@sopsai.iam.gserviceaccount.com"
  ]
}
