provider "google" {
  project = "sapient-poet-351315"
  region  = "us-central1"
#    project_id = var.project_id
}

data "google_container_registry_image" "gcr" {
  name = var.imagename
}

resource "google_project_service" "run" {
  service            = "run.googleapis.com"
  disable_on_destroy = false
}

resource "google_cloud_run_service" "deployrun" {
  
  depends_on = [
    google_project_service.run
  ]
  
   name     = "this is main branch cloudn runm main tf file"
   location = var.location
  
  template {
    spec {
      containers {
        data.google_container_registry_image.gcr.name
      }
    }
  }
  
}
