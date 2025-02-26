terraform {
  required_version = ">=0.12.0"
  backend "s3" {
    key            = "terraform.state"
    bucket         = "mamuks-terraform-backend-bucket"
    region         = "us-west-2"
    dynamodb_table = "mamuks-state-locking"
  }
}
