/*resource "google_compute_network" "terraform_network" {
  name                    = "terraformnetwork"
  auto_create_subnetworks = true
}*/

resource "aws_vpc" "terraform_aws_vpc" {
  cidr_block           = "10.20.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags {
    Name = "my-terraform-vpc"
  }
}
