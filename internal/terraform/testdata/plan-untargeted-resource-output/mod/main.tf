locals {
  one = 1
}

resource "aws_instance" "a" {
  count = "${local.one}"
  tags = {
    yor_trace = "c0fda587-7447-4bfa-b6ad-edc2544bb402"
  }
}

resource "aws_instance" "b" {
  count = "${local.one}"
  tags = {
    yor_trace = "1f401a7a-ab10-46e8-8692-c7c0253316af"
  }
}

output "output" {
  value = "${join("", coalescelist(aws_instance.a.*.id, aws_instance.b.*.id))}"
}
