terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.49.0"
    }
  }
}

provider "google" {
  credentials = file("cred.json")

  project = "proyecto-aaa"
  region  = "us-west1"
  zone    = "us-west1-a"
}

resource "google_compute_network" "vpc_network" {
  name = "keep-network"
}

# resource "google_compute_adress" "mi_ip" {
#   name = "static-ip"
# }

# resource "google_compute_instance" "mi_vm" {
#   depends_on = [
#     google_compute_network.vpc_network,
#     google_compute_address.mi_ip
#   ]
#   name         = "mi-maquina"
#   machine_type = "e2-micro"

#   boot_disk {
#     initialize_params {
#       image = "projects/ubuntu-os-cloud/global/images/ubuntu-1804-bionic-v20230112"
#     }
#   }

#   network_interface {
#     network = google_compute_network.vpc_network.name
#     access_config {
#       nat_ip = google_compute_address.mi_ip.address
#     }
#   }
# }

# resource "random_string" "mirandom" {
#   length  = 9
#   special = false
#   upper   = false
# }


# resource "google_storage_bucket" "mi-bucket" {
#   name     = "bucket-${random_string.mirandom.result}"
#   location = "europe-southwest1"
# }
