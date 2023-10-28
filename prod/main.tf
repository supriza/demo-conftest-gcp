terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
  backend "gcs" {
   bucket  = "8046b8f4c208f5bb-bucket-tfstate"
   prefix  = "terraform/state"
 }
}

provider "google" {
  project = "digger-landing"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}
