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
   credentials = "gcp_key.json"
 }
}

provider "google" {
  credentials = file("gcp_key.json")

  project = "digger-landing"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}
