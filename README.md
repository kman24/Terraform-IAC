# Terraform Infra

Terraform Project: GCP Infrastructure Deployment

This Terraform project allows you to deploy a Google Cloud Platform (GCP) infrastructure, including a storage bucket, BigQuery dataset, and Vertex AI notebook instance.
Prerequisites

Before you begin, make sure you have the following prerequisites:

    GCP account with appropriate permissions to create resources
    Terraform installed on your local machine (version 1.0.0 or later)
    GCP credentials file (JSON format) with access to the desired GCP project



## Setup

The main configuration files are located at the root level, while each resource is defined in its respective module under the modules/ directory. The sample customer data file is located in the data/ directory.
Setup Instructions

```sh
  git clone https://github.com/kman24/Terraform.git
   cd your-repository
```


1. Update the variables:



Open the variables.tf file and update the variable values as per your requirements. Additionally, update the backend.tf and providers.tf files if you want to enable backend state management or specify a different provider version.

2. Provide GCP credentials:

    Place your GCP credentials file (JSON format) in the root directory of the project and name it credentials.json.

3. Load customer sample data (optional):

    If you want to load the customer sample data into BigQuery, place the CSV file in the data/ directory and update the customer_sample_data_csv variable in your .tfvars file or command-line arguments.

4. Initialize the Terraform project:

5. Run the following command to initialize the project:
    ```sh
    terraform init
    ```

6. Plan the infrastructure:

    Run the following command to see the execution plan:
    ```sh
    terraform plan
    ```

Review the plan to ensure it matches your expectations.

7. Deploy the infrastructure:

    Run the following command to deploy the infrastructure:
    ```sh
    terraform apply
    ```

    Type "yes" when prompted to confirm the deployment.

8. Verify the deployment:

    After the deployment is complete, verify that the resources are created successfully in your GCP project.


# Resource List

The following resources will be created by this Terraform project:

    GCP Project
    Storage Bucket
    BigQuery Dataset
    Vertex AI Notebook Instance

Please refer to the respective module README files for more details on each resource.

# Cleanup

To clean up and destroy the deployed resources, run the following command:

terraform destroy

Type "yes" when prompted to confirm the destruction.
Troubleshooting
