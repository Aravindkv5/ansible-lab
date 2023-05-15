output "master_publicip" {
  value = aws_instance.myec2[0].public_ip
}
output "node1_private_ip1" {
  value = aws_instance.myec2[1].private_ip
}
output "node2_private_ip2" {
  value = aws_instance.myec2[2].private_ip
}
