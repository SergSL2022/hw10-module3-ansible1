resource "local_file" "ansible_inventory" {
  content  = templatefile("${path.module}/templates/inventory.tpl", {
    instances = aws_instance.nginx_web_server
  })
  filename = "${path.module}/ansible/inventory/inventory.ini"
}