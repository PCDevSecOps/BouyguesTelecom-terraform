provider "aws" {
  alias = "eu"
}

resource "aws_instance" "foo" {
  provider = "aws.eu"
  tags = {
    yor_trace = "6cacea08-5d2b-450b-aabc-e172f586f843"
  }
}
