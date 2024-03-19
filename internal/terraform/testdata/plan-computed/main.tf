resource "aws_instance" "foo" {
  num     = "2"
  compute = "foo"
  tags = {
    yor_trace = "58fa6ea6-4676-4177-9bbe-60a912a15e6b"
  }
}

resource "aws_instance" "bar" {
  foo = "${aws_instance.foo.foo}"
  tags = {
    yor_trace = "571776c7-73af-4071-8ecd-c4df41a281ae"
  }
}
