provider "aws" {
  alias = "baz"
}

resource "aws_instance" "baz" {
  provider = "aws.baz"
  tags = {
    yor_trace = "04f966a1-867d-4905-a8a5-cc1a6322022d"
  }
}
