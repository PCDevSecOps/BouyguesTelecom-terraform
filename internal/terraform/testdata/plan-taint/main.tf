resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "697b2838-d98b-4f80-8fbc-2140de719f7c"
  }
}

resource "aws_instance" "bar" {
  foo = "${aws_instance.foo.num}"
  tags = {
    yor_trace = "c2ad4399-0c77-415a-8dd6-62600c2e08da"
  }
}
