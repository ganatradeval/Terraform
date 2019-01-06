#Create Wordpress directory
resource "null_resource" "Create_directory" { 
        provisioner "local-exec" { 
                command = "mkdir -p ${var.wp_dir}/wordpress/database ${var.wp_dir}/wordpress/html " 
        }
}

# Start the DB Container
resource "docker_container" "db_container" { 
        name = "${var.dbname}" 
        image = "${var.dbimage}" 
        env = [
                "MYSQL_ROOT_PASSWORD=${var.MYSQL_ROOT_PASSWORD}",
                "MYSQL_USER=${var.MYSQL_USER}",
                "MYSQL_PASSWORD=${var.MYSQL_PASSWORD}",
                "MYSQL_DATABASE=${var.MYSQL_DATABASE}"
        ] 
        volumes { 
                host_path = "${var.wp_dir}/wordpress/database" 
                container_path = "/var/lib/mysql" 
        }
}
#Start Wordpress Container
resource "docker_container" "wp_container" { 
        name = "${var.wpname}" 
        image = "${var.wpimage}" 
        depends_on = ["docker_container.db_container"]
        ports { 
                internal = "${var.int_port}" 
                external = "${var.ext_port}" 
        } 
        env = [
                "WORDPRESS_DB_USER=${var.WORDPRESS_DB_USER}",
                "WORDPRESS_DB_PASSWORD=${var.WORDPRESS_DB_PASSWORD}",
                "WORDPRESS_DB_NAME=${var.WORDPRESS_DB_NAME}"
        ] 
        volumes { 
                host_path = "${var.wp_dir}/wordpress/html" 
                container_path = "/var/www/html" 
        } 
        links = ["${var.dbname}:mysql"]
}