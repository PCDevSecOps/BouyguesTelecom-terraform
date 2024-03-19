variable "value" {}

resource "aws_vpc" "bar" {
  value = "${var.value}"
  tags = {
    yor_trace = "249ce445-12a3-40ff-809d-7dabcdea17a2"
  }
}
