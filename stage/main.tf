
resource  "google_cloudbuild_trigger" "manual-trigger" {
  name = var.repo_type
 git_details = var.git_details
#   source               = "../modules/build_trigger_build"
}
