variable "foo" {
  default = "2"
}

resource "aws_instance" "foo" {
  count = "${var.foo}"
  tags = {
    yor_trace = "37504cae-f457-4e02-af7c-5aaa7a34cb50"
  }
}

resource "aws_instance" "bar" {
  foo = length(aws_instance.foo)
  tags = {
    yor_trace = "d4f93e15-5d62-4609-b1d9-74fd4c0cacfc"
  }
}
