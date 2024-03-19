provider "aws" {}

resource "aws_instance" "test" {
  foo   = "${format("foo%d", count.index)}"
  count = 2
  tags = {
    yor_trace = "fa3ec1d4-e093-48c4-9d7b-c8b5ed6f8c55"
  }
}
