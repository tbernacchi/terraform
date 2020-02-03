resource "google_compute_instance" "smaato-test" {
  name         = "smaato-test"
  machine_type = "n1-standard-1"
  zone         = "southamerica-east1-a"
  tags         = ["http-server", "https-server"]
  
  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }

  boot_disk {
    initialize_params {
      size  = 10
      image = "ubuntu-os-cloud/ubuntu-1604-xenial-v20180522"
    }

    device_name = ""
    auto_delete = "true"
  }

  network_interface {
    network       = "default"
    access_config = {}
  }

 metadata_startup_script = "${file("bootstrap.sh")}"
}

