provider "aws" {
  from = "child"
  to   = "child"
}

resource "aws_instance" "foo" {
  from = "child"
  tags = {
    yor_trace = "06166f55-cc39-4c87-84ff-7161a2c721ad"
  }
}
