resource "aws_instance" "foo" {
  num     = "2"
  compute = "foo"
  tags = {
    yor_trace = "bc4b2f7b-95a4-4522-b779-6f8b36496acd"
  }
}

data "aws_vpc" "bar" {
  foo = "${aws_instance.foo.foo}"
}
