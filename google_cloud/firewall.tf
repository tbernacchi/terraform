#resource "google_compute_firewall" "test-firewall" {
#  name    = "test-firewall"
#  network = "default"
#  direction = "INGRESS"
  
#  allow {
#    protocol = "tcp"
#    ports    = ["80"]
#  }

# source_ranges = ["0.0.0.0/0"]
#  target_tags = ["tadeu-web-teste"]
#}