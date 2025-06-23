terraform {
  backend "s3" {
    bucket  = "eks-terra-bucket-098498"
    key     = "backend/ToDo-App.tfstate"
    region  = "us-east-1"
    encrypt = true
    #  dynamodb_table = "dynamoDB-terra"
    use_lockfile = true
  }
}