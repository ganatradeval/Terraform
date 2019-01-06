#Database Container
variable "dbname"{
}
variable "dbimage"{ 
}
#Wordpress Container
variable "wpname"{ 
}
variable "wpimage"{ 
}
variable "int_port"{ 
}
variable "ext_port"{ 
}
variable "wp_dir"{ 
}
#Secrets
variable "MYSQL_ROOT_PASSWORD"{ 
}
variable "MYSQL_USER"{ 
}
variable "MYSQL_PASSWORD"{ 
}
variable "MYSQL_DATABASE"{ 
}
variable "WORDPRESS_DB_USER"{ 
}
variable "WORDPRESS_DB_PASSWORD"{ 
}
variable "WORDPRESS_DB_NAME"{ 
}