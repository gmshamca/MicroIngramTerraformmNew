
variable "repo_type" {
  type        = string
  description = "The name of the repo Type"
}

variable "git_repo" {
  description = "Git Repository Details"
  type = map
  default = {
      repo1 = {
        name           = "app1"
        uri            = "https://github.com/gmshamca/MicroIngramTerraformmNew"
        branch         = "main"
    },
 
    repo2 = {
        name              =  "app2"
        uri               = "https://github.com/gmshamca/gmsha-terraform-cloud"
        branch            = "main"
   }
