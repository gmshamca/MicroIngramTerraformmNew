variable "service-name" {
  type        = string
  description = "Cloud Run Service Name"
  default = "ingram-spring-output-service"
}

variable "location" {
  type        = string
  description = "Region for Deployment"
  default = "us-central1"
}

variable "imagename" {
  type        = string
  description = "Name of the image"
   default = "ingram-spring-output-imagename"
}

variable "project_id" {
  type        = string
  description = "Project ID"
  default="sapient-poet-351315"
}
