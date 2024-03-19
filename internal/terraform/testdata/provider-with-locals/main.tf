provider "aws" {
  region = "${local.foo}"
}

locals {
  foo = "bar"
}

resource "aws_instance" "foo" {
  value = "${local.foo}"
  tags = {
    yor_trace = "666d79a0-6174-40af-85e3-be22dc9b0a80"
  }
}
