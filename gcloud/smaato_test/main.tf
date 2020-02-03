provider "google" {
  credentials = "${file ("/home/tadeu/github/terraform/google-cloud-terraform-key.json")}"
  project     = "iconic-computer-205620"
  region      = "southamerica-east1"
}
