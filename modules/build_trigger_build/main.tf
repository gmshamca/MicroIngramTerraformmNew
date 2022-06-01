
resource "google_cloudbuild_trigger" "manual-trigger" {
#   for_each  = var.git_repo
#   name        = each.value.name
  
  source_to_build {
    uri       = var.uri
    ref       = var.branch
    repo_type = var.repo_type
  }

  git_file_source {
#     path      = "cloudbuild.yaml"
    uri       =  var.uri
    revision  =  var.branch
    repo_type = var.repo_type
  }

}
