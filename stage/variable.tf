
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
        name           = "app1"
        uri            = "https://github.com/gmshamca/spring-build--trigger"
        branch         = "main"
        imagename      = "app1-repo"
    },
 
    repo2 = {
        name              =  "app2"
        uri               = "https://github.com/gmshamca/helloworld"
        branch            = "main"
        imagename         =  "ingram-spring-output"
   } 
}
}

