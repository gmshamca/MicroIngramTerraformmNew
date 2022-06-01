
resource  "google_cloudbuild_trigger" "manual-trigger" {
  name = var.repo_type
  gt_repo = var.git_repo
#   source               = "../modules/build_trigger_build"
}
