resource "google_compute_instance" "teste-zabbix-cloud" {
  name         = "zabbix-server"
  machine_type = "n1-standard-1"
  zone         = "southamerica-east1-a"

  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }

  boot_disk {
    device_name = "zabbix-server"
    auto_delete = "true"

    initialize_params {
      size  = 50
      image = "centos-7-v20180104"
    }
  }

  network_interface {
    network       = "default"
    access_config = {}
  }
}
