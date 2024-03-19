resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "72723b62-248c-4dca-b7f3-4e32c29e6139"
  }
}

resource "aws_instance" "bar" {
  foo = "${aws_instance.foo.num}"
  tags = {
    yor_trace = "f26887b0-d9b2-4902-b3b1-4c9a9612a7c8"
  }
}
