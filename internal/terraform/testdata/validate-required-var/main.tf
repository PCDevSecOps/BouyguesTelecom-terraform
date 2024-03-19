variable "foo" {}

resource "aws_instance" "web" {
  ami = "${var.foo}"
  tags = {
    yor_trace = "aa3d4c2d-3bd4-4a84-b8a2-63520e6fd002"
  }
}
