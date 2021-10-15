terraform {
  backend "remote" {
    organization = "example-org-8fbf9e"
    workspaces {
      name = "terraform-gcp"
    }
  }
}
resource "google_storage_bucket" "static-sitei" {
  name          = "image-test-store"
  location      = "EU"
  force_destroy = true

  uniform_bucket_level_access = true

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
} 