[NGINX]
%{ for idx, instance in instances ~}
nginx-0${idx + 1} ansible_host=${instance.public_ip}
%{ endfor ~}

[NGINX:vars]
ansible_ssh_user=ubuntu
ansible_ssh_private_key_file=~/.ssh/${instances[0].key_name}

[local]
localhost ansible_connection=local
