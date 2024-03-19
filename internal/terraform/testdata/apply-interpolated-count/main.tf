variable "instance_count" {
  default = 1
}

resource "aws_instance" "test" {
  count = "${var.instance_count}"
  tags = {
    yor_trace = "b1a157e2-0a7e-4675-b10d-e3261ecae64e"
  }
}

resource "aws_instance" "dependent" {
  count = "${length(aws_instance.test)}"
  tags = {
    yor_trace = "1e6133b9-cfda-4379-a398-821360b3fde4"
  }
}
