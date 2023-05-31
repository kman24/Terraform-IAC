
# Vertex AI Notebook Module

This module is responsible for creating a Vertex AI notebook instance.

## Usage

```hcl
module "vertex_ai_notebook" {
  source          = "./modules/vertex_ai_notebook"
  project_id      = var.project_id
  notebook_name   = var.notebook_name
  machine_type    = var.machine_type
  accelerator     = var.accelerator
  boot_disk_size  = var.boot_disk_size
  boot_disk_image = var.boot_disk_image
  environment_variables = var.environment_variables
}
