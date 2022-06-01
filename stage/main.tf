
resource  "google_cloudbuild_trigger" "manual-trigger" {
  name = var.repo_type
 name-repo=var.repo
}
