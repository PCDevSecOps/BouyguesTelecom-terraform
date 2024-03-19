variable "instance_count" {
  default = "1"
}

resource "aws_instance" "foo" {
  count = "${var.instance_count}"
  bar   = "bar"
  tags = {
    yor_trace = "51ed4ddb-12fa-439c-9d21-9703a61502fe"
  }
}
