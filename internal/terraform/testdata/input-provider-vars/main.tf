variable "foo" {}

resource "aws_instance" "foo" {
  foo = "${var.foo}"
  tags = {
    yor_trace = "3c5b251b-d07a-40b0-a9aa-f12216d22cb0"
  }
}
