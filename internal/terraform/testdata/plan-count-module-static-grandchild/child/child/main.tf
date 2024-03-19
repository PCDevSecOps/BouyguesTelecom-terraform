variable "value" {}

resource "aws_instance" "foo" {
  count = "${var.value}"
  tags = {
    yor_trace = "616c7b46-4afd-428f-8e67-a0e521df0669"
  }
}
