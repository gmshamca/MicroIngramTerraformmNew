
resource  "google_cloudbuild_trigger" "manual-trigger" {
  name = var.repo_type
 repo_details=var.repo_details
}
