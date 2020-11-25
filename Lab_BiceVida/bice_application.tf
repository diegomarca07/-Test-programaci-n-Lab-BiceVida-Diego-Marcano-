resource "aws_vpc" "bice_vpc_id" {
  cidr_block       = var.bice_vpc_id
  instance_tenancy = "default"

  tags = {
    Name = "bice_vpc_id"
  }
}

resource "aws_elastic_beanstalk_application" "application" {
  name        = "bice_name_application"
}

resource "aws_elastic_beanstalk_environment" "environment" {
  name                = "BiceEnvironment"
  application         = aws_elastic_beanstalk_application.application.name
  solution_stack_name = "64bit Amazon Linux 2 v3.2.1 running Docker"
  
  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name = "InstanceType"
    value = "t2.micro"
  }
  setting {
    namespace = "aws:elasticbeanstalk:environment"
    name = "EnvironmentType"
    value = "SingleInstance"
  }
  setting {
        namespace = "aws:autoscaling:launchconfiguration"
        name      = "IamInstanceProfile"
        value     = "aws-elasticbeanstalk-ec2-role"
      }

  
  
  
}