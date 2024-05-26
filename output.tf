output "VPC_ID" {
    description = "VPC ID"
    value = aws_security_group.slipchuk-sg.vpc_id
}

output "instances_public_ips" {
    description = "Web-servers public IP addresses"
    value = aws_instance.nginx_web_server[*].public_ip
}

output "open_ports" {
    description = "Security group open ports"
    value = var.open_ports
}

output "Instances_ssh_keynames" {
    description = "Instances SSH keynames"
    value = aws_instance.nginx_web_server[*].key_name
}