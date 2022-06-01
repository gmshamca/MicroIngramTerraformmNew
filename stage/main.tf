
resource  "google_cloudbuild_trigger" "manual-trigger" {
  name = var.repo_type
  name = var.git_repo
#   source               = "../modules/build_trigger_build"
}
