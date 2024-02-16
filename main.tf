terraform {
  required_providers {
    google = {
      version = ">= 4.51.0"
    }

  }
}

resource "google_project_service" "artifactregistry" {
  project = "braided-pride-413213"
  service = "artifactregistry.googleapis.com"
}

resource "google_storage_bucket" "terraform-bucket" {
  name     = "braided-pride-413213-terraform-metadata"
  project  = "braided-pride-413213"
  location = "us-central1"
}


resource "google_artifact_registry_repository" "sourav-registry" {
  project       = "braided-pride-413213"
  location      = "us-central1"
  repository_id = "docker-repository"
  description   = "example docker repository"
  format        = "DOCKER"
  depends_on    = [google_project_service.artifactregistry]
}
