resource "aws_instance" "app_server" {
  ami                  = lookup(var.AmiLinux, var.region)
  instance_type        = "t2.micro"
  iam_instance_profile = aws_iam_instance_profile.test_profile-2.name #change test_profile-2
  tags = {
    Name = "devops-my-2" #changes devops-my-2
  }
  # key_name        = "bucket-key1" #changes comment 
  # security_groups = ["${aws_security_group.test_sg.name}"]  #changes  comment


}

resource "aws_s3_bucket" "test" {
  bucket = "harshit0015-bucket-2" #changes bucket name
}

# resource "aws_key_pair" "ssh-key" { #changes comment from  18-21
#   key_name   = "bucket-key1" #changes
#   public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDeIATDco3GYVzFcwxn7pPHC49ZR6r5fCMQU/xnu53uwDmlb4QA6E3neEPIqC8QaMCrNEJN5NNS/TioJzwWNitPbuNRUTzcHZbOJ4+bRHie7gHVUp+r5qJbYLD8Vyn/1TCx507B2nOwL7VASjkStYDbfxImjrNMsQ7dHSosyEZCC5mv7NiCURVa9eRKXKmwPpUf1qdhAhxeGbBzTUb5z0Snx8qr1g4o5ApOBrRMytvmRaKdzjFoXjgIjEwNdYUUA1MslivkSQHpJAE0npztcGrnOSt09JX4rHLzl2kIxbkh3rVBnNbVRI2m5zEiDJQ6wW6ElRjtlh6RbI+i9T2ml1BKwJP5Nb88s7gqz6GLhPnWaz5NNuI4odZI76IewZA9DY9VWPY4t7G2N56vWm5G8f9N5O3c9CTT1iXudDEs+hdJxVvOI7WxVzCFQo3TmoRUCOPqDGmRgzneSE5XKLpU5buyd4r7WIZssvRtQYBO/7dnpvIs/rM5CrAMoB8AOqCLcAE= knoldus@knoldus-Vostro-3559"
# }

output "instance_ip" {
  value = aws_instance.app_server.public_ip
}