
variable "repo_type" {
  type        = string
  description = "The name of the repo Type"
  default = "GITHUB"
}

variable "git_repo" {
  description = "Git Repository Details"
  type = map
  default = {
      repo1 = {
        name           = "spring-boot"
        uri            = "https://github.com/gmshamca/spring-build--trigger"
        branch         = "main"
        imagename      = "spring-project"
    },
 
       repo2 = {
        name              =  "java-maven"
        uri               = "https://github.com/gmshamca/helloworld"
        branch            = "main"
        imagename         =  "maven-project"
   } 
}
}

