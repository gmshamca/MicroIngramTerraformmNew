variable "service-name" {
  type        = string
  description = "Cloud Run Service Name"
  defualt = "ingram-spring-output"
}

variable "location" {
  type        = string
  description = "Region for Deployment"
  default = "us-central1"
}

variable "imagename" {
  type        = string
  description = "Name of the image"
   defualt = "ingram-spring-output-imagename"
}

# variable "project_id" {
#   type        = string
#   description = "Project ID"
# }
