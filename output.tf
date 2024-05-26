output "VPC_ID" {
    description = "VPC ID"
    value = aws_security_group.slipchuk-sg.vpc_id
}

output "instance_1_public_ip" {
    description = "Web-server public IP address"
    value = aws_instance.nginx_web_server_1.public_ip
}

output "instance_2_public_ip" {
    description = "Web-server public IP address"
    value = aws_instance.nginx_web_server_2.public_ip
}

output "open_ports" {
    description = "Security group open ports"
    value = var.open_ports
}

output "Instance_1_ssh_keyname" {
    description = "Instance-1 SSH keyname"
    value = aws_instance.nginx_web_server_1.key_name
}

output "Instance_2_ssh_keyname" {
    description = "Instance-2 SSH keyname"
    value = aws_instance.nginx_web_server_2.key_name
}