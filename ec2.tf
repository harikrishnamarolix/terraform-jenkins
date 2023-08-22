resource "aws_instance" "instance1" {
    ami = "ami-098dd3a86ea110896"
    instance_type = "t2.micro"
}