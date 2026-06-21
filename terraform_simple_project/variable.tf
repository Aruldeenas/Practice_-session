variable "Name" {
    default = "Deena"
}
variable "Environment" {
    default  = "dev"
}

locals {
    Name  = "${var.Name} - Nirmal"
    Environment = "${var.Environment} - Env"
}