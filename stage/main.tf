
resource  "google_cloudbuild_trigger" "manual-trigger" {
  repo_type = var.repo_type
  git_repo= var.git_repo
#   source               = "../modules/build_trigger_build"
}
