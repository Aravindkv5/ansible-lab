variable "region" {
  type    = string
  default = "us-east-1"
}
variable "tag_name" {
  type    = list(string)
  default = ["Master", "Node1", "Node2"]
}
variable "instance_type" {
  type = map(any)
  default = {
    "us-east-1a" = "t2.micro"
    "us-east-1b" = "t2.medium"
    "us-east-1c" = "t2.large"
  }
}
variable "az" {
  type    = list(string)
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}
variable "ingress_ports" {
  type    = list(number)
  default = [22]
}

variable "iam_instance_profile" {
    default = ["EC2-Admin"]
    description = "we can assign the IAM role needed to the EC2 instances"
  
}