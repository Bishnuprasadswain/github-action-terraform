terraform {
  backend "s3" {
    bucket = "ny-gh-action-bucket"
    key    = "mystate/terraform.tfstate"
    region = "us-east-1"
  }
}
