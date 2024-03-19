variable "foo" {}

resource "aws_instance" "foo" {
  foo   = "foo"
  count = "${var.foo}"
  tags = {
    yor_trace = "6dae0ad5-da78-462c-8e8c-cc8a8234a2bb"
  }
}
