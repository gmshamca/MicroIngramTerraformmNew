variable "service-name" {
  type        = string
  description = "Cloud Run Service Name"
  default = "ingram-spring-maven-service"
}

variable "location" {
  type        = string
  description = "Region for Deployment"
  default = "us-central1"
}

variable "imagename" {
  type        = string
  description = "Name of the image"
  default = "gcr.io/sapient-poet-351315/maven-project@sha256:15f5da454aa1f17fe852ffe9e5b5874076d9b7f4a19202b83a5c7ef979af6093"
   
}

variable "project_id" {
  type        = string
  description = "Project ID"
  default="sapient-poet-351315"
}
