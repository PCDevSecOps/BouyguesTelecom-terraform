variable "value" {}

resource "aws_instance" "bar" {
  count = "${var.value}"
  tags = {
    yor_trace = "b6cd99a1-1b43-4851-ae23-2497a51cc703"
  }
}
