
variable "repo_type" {
  type        = string
  description = "The name of the repo Type"
}

variable "git_repo" {
  type = string
  description = "Git Repository Details"
  
#   default = {
#       repo1 = {
#         name           = "git1"
#         uri            = "https://github.com/gmshamca/spring-build--trigger"
#         branch         = "main"
#     }
#   }
} 
 
#     repo2 = {
#         name              =  "git2"
#         uri               = "https://github.com/gmshamca/helloworldmaven"
#         branch            = "main"
#    }
