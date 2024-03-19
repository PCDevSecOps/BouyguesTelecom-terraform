variable "input" {
  type = string
}

resource "aws_instance" "foo" {
  foo = var.input
  tags = {
    yor_trace = "225139d8-73ca-4afe-9317-9d71edb15690"
  }
}

output "foo" {
  value = aws_instance.foo.foo
}
