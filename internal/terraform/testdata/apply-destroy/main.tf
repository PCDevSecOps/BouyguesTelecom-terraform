resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "f6922ae2-5104-475a-8e25-b60b3d4404d7"
  }
}

resource "aws_instance" "bar" {
  foo = "${aws_instance.foo.num}"
  tags = {
    yor_trace = "47a3c5a7-98ca-4c74-92d6-2589b3cee9f7"
  }
}
