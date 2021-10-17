terraform {
  backend "remote" {
    organization = "example-org-8fbf9e"
    workspaces {
      name = "terraform-gcp"
    }
  }
}

resource "google_compute_network" "vpc_network" {
  project                 = var.project_id
  name                    = "vpc-network"
  auto_create_subnetworks = true
  mtu                     = 1460
}