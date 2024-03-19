variable "foo" {}

locals {
  baz = "baz-${var.foo}"
}

provider "aws" {
  foo = "${local.baz}"
}

resource "aws_instance" "foo" {
  id = "bar"
  tags = {
    yor_trace = "2e6ae467-80e7-4e15-b2f2-d497a88292fd"
  }
}
