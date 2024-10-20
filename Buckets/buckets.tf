resource "google_storage_bucket" "bucket_1" {
  name    = "statefile_storage"
  project = "pubsub-test-16"
  location      = "EU"
  force_destroy = true
  uniform_bucket_level_access = true
}