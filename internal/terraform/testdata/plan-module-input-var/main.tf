variable "foo" {}

module "child" {
  input  = "${var.foo}"
  source = "./child"
}

resource "aws_instance" "bar" {
  foo = "2"
  tags = {
    yor_trace = "75c2dc24-b85d-4278-b331-c73a312f3824"
  }
}
