provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAXYKJQW65T77VDAN2"
  secret_key = "wKp5W+sonZVNXMW5+RuQGrA3I4/2ffDGTrJj5iqI"
}

resource "aws_instance" "ec2_example" {
  ami           = "ami-08116b9957a259459"
  instance_type = "t2.micro"
  key_name      = "new_key"

  tags = {
    Name = "public_instance"
  }
}

resource "aws_key_pair" "deployer" {
  key_name   = "new_key"           
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDFMPy2RQIFCSy5+rdy9/scn+7BOO75+QzLmFQ5HmKiyEDkjwF/bkDgiXHD9b/IBGXyxQXMO7wQK1zTwioZlaB16PpyptUV7xOu8Y3zjv/nItA7CJw/9eA7iFharFHAUkIg7lNgbkY2uxKUENSpqH86tHJ1ueiOGftUTayA+PPkhPiCS7Khxggxlz1Y4+HS7QTxnpQmgN+gDR+ErxsqydXsCGFRkypTvPE/HSf7Ybp9era+zTfBYX302hAQ8DBfXCZ7CPJFMkpUMDTH826nuv9ARWKAzLleWvZSVPZEN26ktHxxHI7Rl8NJXeNeM06uMt4KgazhIM+XHOifIqwd0ZMr nassim@DESKTOP-C2DPHLV"
     
}
