terraform {
 backend "s3" {
 bucket = "bishnu-13"
 key = "terraform.tfstate"
 region = "ap-south-1"
      }
}
