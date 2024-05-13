terraform {
  backend "s3" {
    bucket = "terra-state-dove-w"
    key    = "terraform/backend"
    region = "us-east-1"
  }
}