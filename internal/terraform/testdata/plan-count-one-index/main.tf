resource "aws_instance" "foo" {
  count = 1
  foo   = "foo"
  tags = {
    yor_trace = "907afa08-732e-4a2a-8cc3-0b191f2ae32d"
  }
}

resource "aws_instance" "bar" {
  foo = "${aws_instance.foo.0.foo}"
  tags = {
    yor_trace = "16744fb3-2f50-4a58-b3ab-d9e997219193"
  }
}
