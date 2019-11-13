#Workspace Example
terraform {
  required_version = ">= 0.12, < 0.13"
}

provider "aws" {
  region = "us-east-2"

  # Allow any 2.x version of the AWS provider
  version = "~> 2.0"
}

terraform {
  backend "s3" {

    # ma buckets

     bucket         = "chris-up-and-running-terraform-example"
     key            = "workspaces-example1234/terraform.tfstate"
     region         = "us-east-2"
     dynamodb_table = "terraform-up-and-running-locks"
     encrypt        = true

  }
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"

  instance_type = terraform.workspace == "default" ? "t2.medium" : "t2.micro"

}


## my boo boo code terraform {
## my boo boo code     backend "s3"{
## my boo boo code         #state file locations!
## my boo boo code         bucket = "chris-up-and-running-terraform-example"
## my boo boo code         key = "workspaces-example/terraform.tfstate"
## my boo boo code         region = "us-east-2"
## my boo boo code 
## my boo boo code         #Ma Databases
## my boo boo code         dynamodb_table = "terraform-up-and-running-locks"
## my boo boo code         encrypt = true
## my boo boo code     }
## my boo boo code }
## my boo boo code provider "aws" {
## my boo boo code     region = "us-east-2"
## my boo boo code }
## my boo boo code resource "aws_instance" "example"{
## my boo boo code     ami = "ami-0c55b159cbfafe1f0"
## my boo boo code     instance_type = "t2.micro"
## my boo boo code 
## my boo boo code }