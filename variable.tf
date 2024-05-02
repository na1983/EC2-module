variable "device_name" {
    default = "/dev/sda1"
}
variable "volume_size" {
    default = "30"
}
variable "volume_type" {
    default = "gp2"
}
variable "network_interface_id" {
    default = "eni-05d7ea80a18ad56b8"
}
variable "ami" {
    default = "ami-01be94ae58414ab2e"
}
variable "instance_type" {
    default = "t2.micro"
}
variable "key_name" {
    default = "EC2 TUTORIAL"
}
