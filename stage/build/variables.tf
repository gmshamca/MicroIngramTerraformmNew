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
        name           = "spring-boot-repo"
        uri            = "https://github.com/anup1987/spring-boot-hello-world-1"
        branch         = "master"
        imagename      = "spring-repo"
    },
 
    repo2 = {
        name              =  "maven-repo"
        uri               = "https://github.com/anup1987/helloworld"
        branch            = "main"
        imagename         =  "maven-project"
   } 
}
}
