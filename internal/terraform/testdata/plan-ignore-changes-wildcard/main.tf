variable "foo" {}

variable "bar" {}

resource "aws_instance" "foo" {
  ami      = "${var.foo}"
  instance = "${var.bar}"

  lifecycle {
    ignore_changes = all
  }
  tags = {
    yor_trace = "f9f84396-45da-4d33-b4f4-6e959ea5b3d6"
  }
}
