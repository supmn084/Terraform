terraform {
   #define the location for the terraform state file to be stored in a central location
    backend "s3"{
        bucket = "chris-up-and-running-terraform-example"
        key = "global/s3/terraform.tfstate"
        region = "us-east-2"
    #Dynamo DB Table    
    dynamodb_table = "terraform-up-and-running-locks"
    encrypt = true
    }
}

provider "aws" {
    region = "us-east-2"
}
resource "aws_s3_bucket" "terraform_state"{
    bucket = "chris-up-and-running-terraform-example"
    #this prevents accidential deletion of this bucket
    lifecycle {
        prevent_destroy = true
    }

    #Enable versioning so we can see the full history of edits and updates to the history of our state files
    versioning {
        enabled = true
    }

    #Enable Serverside encryption by default so our data is protected
    server_side_encryption_configuration {
        rule {
            apply_server_side_encryption_by_default {
                sse_algorithm = "AES256"
            }
        }
    }
}
#creating DynamoDB for locking with terraform with a table using the LockID as primary Key
resource "aws_dynamodb_table" "terraform_locks"{
    name = "terraform-up-and-running-locks"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"

    attribute {
        name = "LockID"
        type = "S"
    }
}