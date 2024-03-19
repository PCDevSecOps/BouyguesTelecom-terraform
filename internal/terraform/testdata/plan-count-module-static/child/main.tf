variable "value" {}

resource "aws_instance" "foo" {
  count = "${var.value}"
  tags = {
    yor_trace = "3817dfca-2fd4-46f1-bd43-7087a94315a0"
  }
}
