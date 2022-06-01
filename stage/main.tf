
resource  "google_cloudbuild_trigger" "manual-trigger" {
  r_name = var.repo_type
  g_name = var.git_repo
#   source               = "../modules/build_trigger_build"
}
