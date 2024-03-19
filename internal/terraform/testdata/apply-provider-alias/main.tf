provider "aws" {
  alias = "bar"
}

resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "94a5a646-3655-4fd7-8c4e-6558c80a64d9"
  }
}

resource "aws_instance" "bar" {
  foo      = "bar"
  provider = "aws.bar"
  tags = {
    yor_trace = "bf13f1be-708c-4413-be6d-db85f7e63e36"
  }
}
