resource "aws_instance" "example"{
    ami = "ami-0c55b159cbfafe1f0"
    instance_type = "t2.micro"
}
terraform {
    backend "s3"{
        #state file locations!
        bucket = "chris-up-and-running-terraform-example"
        key = "global/s3/terraform.tfstate"
        region = "us-east-2"

        #Ma Databases
        dynamodb_table = "terraform-up-and-running-locks"
        encrypt = true
    }
}