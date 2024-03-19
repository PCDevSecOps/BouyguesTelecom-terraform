variable "input" {}

resource "aws_instance" "foo" {
  foo = "${var.input}"
  tags = {
    yor_trace = "e3b3f180-d087-431c-add7-c717c7c3e749"
  }
}
