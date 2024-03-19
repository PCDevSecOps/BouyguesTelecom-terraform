variable "input" {}

resource "aws_instance" "foo" {
  foo = "${var.input}"
  tags = {
    yor_trace = "70106a8c-8873-4226-9f4d-cc3459ee3cae"
  }
}
