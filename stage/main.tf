
resource  "google_cloudbuild_trigger" "manual-trigger" {
  repotype = var.repo_type
  gitrepo= var.git_repo
#   source               = "../modules/build_trigger_build"
}
