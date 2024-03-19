provider "aws" {
  foo = "bar"
}

resource "aws_instance" "foo" {
  id = "bar"
  tags = {
    yor_trace = "e9150b46-0628-47a6-8ab3-58c7bcce8eb4"
  }
}
