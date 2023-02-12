terraform {
  backend "s3" {
    bucket         = "mydev-tf-state-bucket-51"
    key            = "terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "my-dynomo-table"
    encrypt = true
  }
}
