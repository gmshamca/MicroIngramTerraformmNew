terraform {
 backend "gcs" {
   bucket  = "microingramterraform"
   prefix  = "terraform/state"
 }
}
