terraform {
  backend "remote" {
    organization = "example-org-8fbf9e"
    workspaces {
      name = "terraform-gcp"
    }
  }
}
resource "google_storage_bucket" "static-sitei" {
  name          = "image-test-store12"
  location      = "EU"
  force_destroy = true
} 