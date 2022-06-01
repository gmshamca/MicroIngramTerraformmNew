
resource  "google_cloudbuild_trigger" "manual-trigger" {
  key=var.key
  zones=var.zones
}
