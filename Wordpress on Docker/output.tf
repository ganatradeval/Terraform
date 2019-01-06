#Wordpress Container
output "IP Address"{
	value = "${docker_container.wp_container.ip_address}"
}
output "Port"{
	value = "${docker_container.wp_container.ports.0.external}"
}
output "Directory"{
	value = "${var.wp_dir}/wordpress/"
}
#Database 

output "IP Address"{
	value = "${docker_container.db_container.ip_address}"
}
