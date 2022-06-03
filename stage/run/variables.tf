variable "location" {
  type        = string
  description = "Region for Deployment"
  default = "us-central1"
}


variable "service_details" {
  description = "Deployment Details"
  type = map
  default = {
      repo1 = {
        serviceName     = "springboot"
        imagename       = "gcr.io/sapient-poet-351315/spring-project:latest"
        tag             = "latest"
    },
 
    repo2 = {
        serviceName           =  "javamaven"
        imagename            =  "gcr.io/sapient-poet-351315/spring-project:latest"
        tag            =  "latest"
   } 
}
}
