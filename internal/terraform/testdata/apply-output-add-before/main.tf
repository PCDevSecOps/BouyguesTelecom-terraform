provider "aws" {}

resource "aws_instance" "test" {
  foo   = "${format("foo%d", count.index)}"
  count = 2
  tags = {
    yor_trace = "8522edfd-7917-4179-b79e-89c19791516b"
  }
}
