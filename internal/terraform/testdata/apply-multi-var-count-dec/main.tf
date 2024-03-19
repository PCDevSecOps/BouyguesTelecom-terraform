variable "num" {}

resource "aws_instance" "foo" {
  count = "${var.num}"
  value = "foo"
  tags = {
    yor_trace = "e53b9520-5ef4-4c9e-987d-7719cef6d69b"
  }
}

resource "aws_instance" "bar" {
  ami = "special"

  value = "${join(",", aws_instance.foo.*.id)}"
  tags = {
    yor_trace = "45880197-5332-405a-ace7-4e63ba6cd41b"
  }
}
