variable "input" {}

resource "aws_instance" "b" {
  id = "${var.input}"
  tags = {
    yor_trace = "a3f19d77-d8e3-402e-a7aa-bd9eaba9cb8c"
  }
}
