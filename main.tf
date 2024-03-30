provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAXYKJQW65T77VDAN2"
  secret_key = "wKp5W+sonZVNXMW5+RuQGrA3I4/2ffDGTrJj5iqI"
}

resource "aws_instance" "ec2_example" {
  ami           = "ami-08116b9957a259459"
  instance_type = "t2.micro"
  key_name      = "k"

  tags = {
    Name = "public_instance"
  }
}

resource "aws_key_pair" "deployer" {
  key_name   = "k"           
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDCftQmcKZzlR+G3fw0Ph8RUWm76Xkl1g0aiZEf5VT9UiS842bogorWro17qNyZP3ETzYWEtTIrKVZ5skWynEYpR9zpJP7bThCyRcDmYv/TRkgENrgmtMjAUYZx3Kfy5nw8yTMlReOVa4lcWi1d65cu9DaICR12LzuvQvn02L9WLI4y1j2JFlPAuOLpSBaOMHlR7YXqkkwGlHeVoNhvaHJVtml3tJpDkG0Srh298VowyO3CNwPmoSVUBhNzosnmntnxJWYL0W4ibcMjMG9WXf0Xf5oyKZrtMcJX0NlaEomPIh42zYOh6F8NMwnZ/3gtLBMlSNe9jIS9EN4OB86P9DOr nassim@DESKTOP-C2DPHLV"
     
}
