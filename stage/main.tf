
resource  "google_cloudbuild_trigger" "manual-trigger" {
  name_type = var.repo_type
  name_repo = var.git_repo
#   source               = "../modules/build_trigger_build"
}
