variable "num" {
}

resource "aws_instance" "foo" {
  count = "${var.num}"
  tags = {
    yor_trace = "3b91997c-f3e7-44fe-b1a2-e92b41bacf86"
  }
}
