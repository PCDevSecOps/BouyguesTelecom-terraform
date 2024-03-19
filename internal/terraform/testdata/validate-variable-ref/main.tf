variable "foo" {}

resource "aws_instance" "bar" {
  foo = "${var.foo}"
  tags = {
    yor_trace = "3fa0d14e-f064-499b-997d-8b57619278e5"
  }
}
