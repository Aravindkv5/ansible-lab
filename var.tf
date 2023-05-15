variable "region" {
  type    = string
  default = "ap-south-1"
}
variable "tag_name" {
  type    = list(string)
  default = ["Master", "Node1", "Node2"]
}
variable "instance_type" {
  type = map(any)
  default = {
    "ap-south-1a" = "t2.micro"
    "ap-south-1b" = "t2.medium"
    "ap-south-1c" = "t2.large"
  }
}
variable "az" {
  type    = list(string)
  default = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
}
variable "ingress_ports" {
  type    = list(number)
  default = [22]
}

variable "iam_instance_profile" {
    default = ["EC2-Admin"]
    description = "we can assign the IAM role needed to the EC2 instances"
  
}