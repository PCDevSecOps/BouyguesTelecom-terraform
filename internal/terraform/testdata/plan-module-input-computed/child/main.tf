variable "input" {}

resource "aws_instance" "foo" {
  foo = "${var.input}"
  tags = {
    yor_trace = "e966da09-4f2b-4edc-b6fb-5af2ef01a4e7"
  }
}
