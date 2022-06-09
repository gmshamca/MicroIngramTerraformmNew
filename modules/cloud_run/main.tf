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
        image = "gcr.io/sapient-poet-351315/maven-project@sha256:15f5da454aa1f17fe852ffe9e5b5874076d9b7f4a19202b83a5c7ef979af6093"
      }
    }
  }
  
}
