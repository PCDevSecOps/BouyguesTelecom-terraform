variable "instance_count" {
  default = 3
}

resource "aws_instance" "foo" {
  count = "${var.instance_count}"
  tags = {
    yor_trace = "1b3b3208-360b-4a3c-92bb-4e3b9c6fa9bf"
  }
}
