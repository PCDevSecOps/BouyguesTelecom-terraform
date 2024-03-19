variable "input" {}

resource "aws_instance" "bar" {
  foo = "${var.input}"
  tags = {
    yor_trace = "8357341d-0f26-4873-9a87-fe49264a9c04"
  }
}
