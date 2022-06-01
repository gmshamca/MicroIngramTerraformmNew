
resource  "google_cloudbuild_trigger" "manual-trigger" {
  name = var.repo_type
 repo_name=var.repo_name
}
