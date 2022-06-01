
resource  "google_cloudbuild_trigger" "manual-trigger" {
  name = var.repo_type
  repository = var.repo_details[repo1]
#   source               = "../modules/build_trigger_build"
}
