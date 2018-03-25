provider "google" {
  credentials = "${file ("/home/tadeu/google-cloud-terraform-key.json")}"
  project     = "kubernetes-198603"
  region      = "southamerica-east1"
}
