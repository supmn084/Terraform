terraform {
  required_version = ">= 0.12, < 0.13"
}

provider "aws" {
  region = "us-east-2"
}
#loads the module - in production (real world) we'd want to point to the ssh::git blah blah repo vs local paths
 module "webserver_cluster"{
  source =  "../../../modules/services/webserver-cluster"
 }