provider "google" {
   project_id = var.project_id
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
  
   name     = "fuckgfgfuuus"
   location = var.location
  
  template {
    spec {
      containers {
        image = "gcr.io/sapient-poet-351315/new-cr-image@sha256:cabd0c4edba33aff6f70370c49b2e9c3c41d88573bd36c338e07385fec01ab52"
      }
    }
  }
  
}
