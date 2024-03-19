variable "foo" {}
variable "bar" {}

resource "aws_instance" "foo" {
  count = 2
  num   = var.foo
  bar   = "baz" #var.bar
  tags = {
    yor_trace = "193e743c-dfad-47a7-871f-b55b3065247d"
  }
}

output "out" {
  value = aws_instance.foo[0].id
}
