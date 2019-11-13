provider "aws"{
    region = "us-east-2"
}

resource "aws_db_instance" "example" {
    identifier_prefix = "terraform-up-and-running"
    engine = "mysql"
    allocated_storage = "10"
    instance_class = "db.t2.micro"
    name = "example_database"
    username = "admin"
    password = var.db_password
    skip_final_snapshot = true
    # this allows for deletion of this with terraform destroy
}
#the password will need to be entered in manually, can set by declaring it before runnign with
#export TF_VAR_db_password = "(YOUR_DB_PASSWORD)" then running terraform apply
terraform{
backend "s3"{
        bucket = "chris-up-and-running-terraform-example"
        key = "stage-loadster/s3/sqldb/terraform.tfstate"
        region = "us-east-2"
    #The above stores the state files into the bucket, location etc    
    #Dynamo DB Table    
    dynamodb_table = "terraform-up-and-running-locks"
    encrypt = true
    }
}