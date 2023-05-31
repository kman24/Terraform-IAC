/**Terraform Main*/

resource "google_bigquery_table" "default" {
  dataset_id = var.dataset_id
  table_id   = var.table_id

  time_partitioning {
    type = "DAY"
  }

  labels = {
    env = "default"
  }

  schema = <<EOF
[
  {
    "name": "customer_id",
    "type": "STRING",
    "mode": "NULLABLE",
    "description": "customer unique identifier"
  },
  {
    "name": "customer_name",
    "type": "STRING",
    "mode": "NULLABLE",
    "description": "customer_name"
  },
  {
  "name": "customer email",
  "type": "STRING",
  "mode": "NULLABLE",
  "description": "customer email"
  }
  
]
EOF

}