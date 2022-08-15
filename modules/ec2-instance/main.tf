resource "aws_instance" "jenkins_ans_ec2" {
  ami                    = var.ami
  instance_type          = var.instance_type
  security_groups        = var.sec_group
  user_data              = "${file("${path.module}/install_jenkins.sh")}" 
  subnet_id              = var.pub_subnet_id
  monitoring             = var.monitoring
  
  tags = {
    "Name" = "Jenkins Ansible ec2 instance"
  }
}

resource "aws_instance" "docker_tomcat_ec2" {
  ami                    = var.ami
  instance_type          = var.instance_type
  security_groups        = var.default_sec_group
  user_data              = "${file("${path.module}/install_docker.sh")}"
  subnet_id              = var.prv_subnet_id
  monitoring             = var.monitoring
  
  tags = {
    "Name" = "Docker Tomcat ec2 instance"
  }
}
