resource "google_bigquery_job" "load_data" {
  job_id     = "load_data"

  load {
    source_uris = [
      "gs://sopsai/data/customer.csv"
    ]

    destination_table {
      project_id = var.project_id
      dataset_id = var.dataset_id
      table_id   = var.table_id
    }
    
    skip_leading_rows = 0
    schema_update_options = ["ALLOW_FIELD_RELAXATION", "ALLOW_FIELD_ADDITION"]

    write_disposition = "WRITE_APPEND"
    autodetect = true
  }
}