terraform {
  required_version = ">= 0.12, < 0.13"
}

provider "aws" {
  region = "us-east-2"
}
 module "webserver_cluster"{
  source =  "../../../modules/services/webserver-cluster"
 }