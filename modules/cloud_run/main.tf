# provider "google" {
#    project_id = var.project_id
# }

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
        image = "gcr.io/sapient-poet-351315/spring-repo@sha256:78caeb932a109680baf5b01a325ac3e20f7a8532a12f0b040f8492ab162b878d"
      }
    }
  }
  
}
