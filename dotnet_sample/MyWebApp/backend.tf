terraform {
  backend "s3" {
    bucket         = "argostreamcicd"
    key            = "eks/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}