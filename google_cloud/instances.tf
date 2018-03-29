resource "google_compute_instance" "tomcat-server" {
  name         = "tomcat-server"
  machine_type = "n1-standard-1"
  zone         = "southamerica-east1-a"
  tags         = ["http-server", "https-server"]

  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }

  boot_disk {
    initialize_params {
      size  = 50
      image = "centos-cloud/centos-7-v20180314"
    }

    device_name = "teste"
    auto_delete = "true"
  }

  network_interface {
    network       = "default"
    access_config = {}
  }
}