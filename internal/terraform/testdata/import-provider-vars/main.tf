variable "foo" {}

provider "aws" {
  foo = "${var.foo}"
}

resource "aws_instance" "foo" {
  id = "bar"
  tags = {
    yor_trace = "b718ed42-eb5f-4616-a49c-afeb12266508"
  }
}
