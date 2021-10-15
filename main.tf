terraform {
  backend "gcs" {
    bucket = "terraform-gcs-mybucket"
    prefix = "new-test"
  }
}
resource "google_storage_bucket" "static-site" {
  name          = "image-test-store"
  location      = "EU"
  force_destroy = true

  uniform_bucket_level_access = true

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
} 