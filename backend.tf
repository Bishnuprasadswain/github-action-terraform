terraform {
 backend "s3" {
 bucket = "my-buck-99"
 key = "terraform.tfstate"
 region = "ap-south-1"
      }
}
