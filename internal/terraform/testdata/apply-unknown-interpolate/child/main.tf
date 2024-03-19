variable "value" {}

resource "aws_instance" "bar" {
  foo = "${var.value}"
  tags = {
    yor_trace = "8d0849d7-daaf-43e4-a380-da1ad2155f26"
  }
}
