variable "instance_count" {}

resource "aws_instance" "one" {
  count = var.instance_count
  tags = {
    yor_trace = "99d39d1c-4090-471c-97b5-5ce846fe719b"
  }
}

locals {
  one_id = element(concat(aws_instance.one.*.id, [""]), 0)
}

resource "aws_instance" "two" {
  value = local.one_id
  tags = {
    yor_trace = "a094e806-cc17-48b5-ba1a-771da5859a45"
  }
}
