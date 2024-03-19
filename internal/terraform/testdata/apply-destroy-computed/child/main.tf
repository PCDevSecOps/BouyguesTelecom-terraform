variable "value" {}

resource "aws_instance" "bar" {
  value = "${var.value}"
  tags = {
    yor_trace = "a9da4985-8d3c-48e1-b95b-5ce20385f9ae"
  }
}
