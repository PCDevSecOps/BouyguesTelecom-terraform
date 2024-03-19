provider "aws" {
  from = "child"
  to   = "child"
}

resource "aws_instance" "foo" {
  from = "child"
  tags = {
    yor_trace = "9bed5ac7-3218-4896-87fa-1a0d6ed827c5"
  }
}
