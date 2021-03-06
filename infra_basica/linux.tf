#data "aws_ami" "ubuntu" {
#  most_recent = true
#  filter {
#    name = "name"
#    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
#  }
#  filter {
#    name = "virtualization-type"
#    values = ["hvm"]
#  }
#  owners = ["099720109477"] # Canonical
#}

resource "aws_instance" "linux" {
  count         = 1
  ami           = var.amis["us-east-1"]
  instance_type = var.instance_type
  key_name      = var.key_name
  #user_data     = var.user_data
  tags = {
    "Name" = "linux-server${count.index}"
    "Group" = "Linux"
  }
  vpc_security_group_ids = ["${aws_security_group.sg_servidoresweb.id}"]
  
  #provisioner "local-exec" {
  #  command = "sleep 60 && ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook playbook_linux_servers.yml -i inventory.aws_ec2.yml"
  #}
}
