variable "destin" {}

resource "aws_instance" "dest" {
  attr = "${var.destin}"
  tags = {
    yor_trace = "627f5339-11cd-4d62-a84c-dd78ef1be51b"
  }
}
