locals {
  val = 2
  bar = "baz"
  m = {
    "a" = "b"
  }
}

variable "myvar" {
  default = "baz"
}

module "count_child" {
  count  = local.val
  foo    = count.index
  bar    = var.myvar
  source = "./child"
}

module "for_each_child" {
  for_each = aws_instance.foo
  foo      = 2
  bar      = each.key
  source   = "./child"
}

resource "aws_instance" "foo" {
  for_each = local.m
  tags = {
    yor_trace = "aef2a730-8f7d-44f4-9627-62272776b4be"
  }
}
