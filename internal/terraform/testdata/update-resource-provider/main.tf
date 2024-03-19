provider "aws" {
  alias = "foo"
}

resource "aws_instance" "bar" {
  provider = "aws.foo"
  tags = {
    yor_trace = "a02771f3-525f-4053-a255-b346cca73fa6"
  }
}
