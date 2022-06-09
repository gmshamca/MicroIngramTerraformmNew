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
  default = "gcr.io/sapient-poet-351315/spring-repo@sha256:45b711f21dc512c5cbed1ed2eb1c1c8d71f7a39ec9148d4957ca6d0c4ca9e797"
   
}

variable "project_id" {
  type        = string
  description = "Project ID"
  default="sapient-poet-351315"
}
