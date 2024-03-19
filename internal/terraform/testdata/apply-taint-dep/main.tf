resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "6c7ed0ef-ffb9-46b2-b81e-6306a1bf8784"
  }
}

resource "aws_instance" "bar" {
  num = "2"
  foo = "${aws_instance.foo.id}"
  tags = {
    yor_trace = "6105c80f-669f-4ee7-a3ed-f29cc6b3644d"
  }
}
