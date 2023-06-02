provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my_app" {
  ami           = "ami-0715c1897453cabd1"
  instance_type = "t2.micro"
}

module "cloudwatch-instance-recovery-alarms" {
  source = "alignedtg/cloudwatch-instance-recovery-alarms/aws"

  region      = "us-east-1"
  hostname    = "api.myapp.com"
  instance_id = aws_instance.my_app.id
}