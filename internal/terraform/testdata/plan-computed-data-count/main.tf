resource "aws_instance" "foo" {
  num     = "2"
  compute = "foo"
  tags = {
    yor_trace = "6a9b4fda-8c0a-4597-9862-6c0fd5628ec7"
  }
}

data "aws_vpc" "bar" {
  count = 3
  foo   = "${aws_instance.foo.foo}"
}
