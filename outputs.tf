output "artifact_registry" {
  value = google_artifact_registry_repository.sourav-registry.id
}

output "artifact_registry_project" {
  value = google_artifact_registry_repository.sourav-registry.project
}

output "terraform-bucket" {
  value = google_storage_bucket.terraform-bucket.id

}
