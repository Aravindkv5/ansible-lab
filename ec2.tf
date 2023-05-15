data "aws_ami" "my_ami" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}
locals {
  values = terraform.workspace == "default" ? 3 : 0
}
resource "aws_instance" "myec2" {
  ami                         = data.aws_ami.my_ami.id
  instance_type               = lookup(var.instance_type, var.az[0], "us-east-1a")
  availability_zone           = var.az[0]
  associate_public_ip_address = true
  subnet_id                   = aws_subnet.my_public_SN.id
  vpc_security_group_ids      = [aws_security_group.mysg.id]
  key_name                    = "AK"
  iam_instance_profile        = var.iam_instance_profile[0]
  count                       = local.values
  user_data                   = file("script.sh")
  tags = {
    Name = var.tag_name[count.index]
  }
}
