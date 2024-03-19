provider "aws" {
  access_key = "a"
  secret_key = "b"
  region     = "us-east-1"
}

resource "aws_instance" "foo" {
  ami             = "ami-foo"
  instance_type   = "t2.micro"
  security_groups = "${aws_security_group.foo.name}"
  tags = {
    yor_trace = "3b203bb6-a03f-4914-8f98-935b166367a4"
  }
}

resource "aws_security_group" "foo" {
  name        = "foobar"
  description = "foobar"
  tags = {
    yor_trace = "a290af40-e7a4-4c3a-ab44-a4aad8bd450d"
  }
}
