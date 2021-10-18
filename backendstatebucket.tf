terraform {
  backend "s3" {
    bucket = "terraformbackendstbucket"
    key    = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "jenkinslock-tf"
  }

}
