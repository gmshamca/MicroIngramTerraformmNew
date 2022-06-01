
variable "repo_type" {
  type        = string
  description = "The name of the repo Type"
}

variable "repo_details" {
  type = string
  description = "Git Repository Details"
 type = map
  default = {
      repo1 = {
        name           = "git1"
        uri            = "https://github.com/gmshamca/spring-build--trigger"
        branch         = "main"
    }
}
}
