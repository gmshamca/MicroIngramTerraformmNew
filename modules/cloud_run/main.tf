
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.73.0"
    }
  }

  required_version = ">= 0.15.0"
}

provider "google" {
  project = var.project_id
  region  = "us-central1"
  }

# module "project_services" {
#   source  = "terraform-google-modules/project-factory/google//modules/project_services"
#   version = "3.3.0"

#   project_id = "{{project-id}}"

#   activate_apis = [
#     "compute.googleapis.com",
#     "oslogin.googleapis.com"
#   ]

#   disable_services_on_destroy = false
#   disable_dependent_services  = false
# }

data "google_container_registry_image" "gcr" {
  name = var.imagename
}

resource "google_project_service" "run" {
  service            = "compute.googleapis.com"
   disable_on_destroy = false
}

resource "google_cloud_run_service" "deployrun" {
  
  depends_on = [
    google_project_service.run
  ]
  
  name     = var.service-name
   location = var.location
   autogenerate_revision_name = true
  
  template {
    spec {
      containers {
       image = data.google_container_registry_image.gcr.name
#         image = "gcr.io/cloudrun/ingram-spring-output"
      }
    }
  }
  
}
