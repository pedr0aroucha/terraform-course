output "dev0" {
  value = aws_instance.dev[0].public_ip
}

output "dev1" {
  value = aws_instance.dev[1].public_ip
}


output "dev2" {
  value = aws_instance.dev[2].public_ip
}
