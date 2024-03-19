output "output" {
  value = "${aws_instance.foo.foo}"
}

resource "aws_instance" "foo" {
  compute = "foo"
  tags = {
    yor_trace = "17b3c7d4-92e8-4d31-8fe8-d7e1552648d1"
  }
}
