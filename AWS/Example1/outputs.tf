output "public_ip"{
value = aws_instance.test1.public_ip
description = "The Public IP address of Test1 Web Server"
}