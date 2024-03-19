resource "aws_instance" "foo" {
  count = 0
  foo   = "foo"
  tags = {
    yor_trace = "ef712963-c38d-4007-82e2-23ccaf03f249"
  }
}

resource "aws_instance" "bar" {
  foo = "${aws_instance.foo.*.foo}"
  tags = {
    yor_trace = "94a4f78d-32fc-4136-b4fa-7fe27a50f46b"
  }
}
