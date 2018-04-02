resource "google_compute_firewall" "default-allow-jetty-server2" {
  name    = "default-allow-jetty-server2"
  network = "default"
  direction = "INGRESS"
  
 allow {
    protocol = "tcp"
    ports    = ["8080"]
  }

 source_ranges = ["0.0.0.0/0"]
 target_tags = ["http-server","https-server"]
}
