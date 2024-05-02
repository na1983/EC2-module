resource "aws_launch_template" "example" {
  name = "example-launch-template"
  
  block_device_mappings {
    device_name = var.device_name
    
    ebs {
      volume_size = var.volume_size
      volume_type = var.volume_type
    }
  }
  
  network_interfaces {
    network_interface_id = var.network_interface_id
    device_index = 0
  }
}

resource "aws_instance" "example" {
  ami = var.ami
  instance_type = var.instance_type
  key_name = var.key_name
  
  network_interface {
    network_interface_id = aws_launch_template.example.network_interfaces[0].network_interface_id
    device_index = 0
  }
  
}