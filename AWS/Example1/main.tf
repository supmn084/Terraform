provider "aws" {
    region = "us-east-2"
}
resource "aws_instance" "test1" {
    ami = "ami-0c55b159cbfafe1f0"
    instance_type = "t2.micro"

user_data = <<-EOF
        #!/bin/bash
        echo "Hello, World" > index.html
        nohup busybox httpd -f -p 8080 &
        EOF
resource "aws_security_group" "instance"{
    name = "terraform-example-instance"
    ingress {
        from_port = 8080
        to_port = 8080
        protocol ="tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
}
    tags = {
        Name = "terraform-example"
    }
    }
