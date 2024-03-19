resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "70222976-9e12-4bd3-9f21-4df2a0eda96a"
  }
}

resource "aws_instance" "bar" {
  foo = "${aws_instance.foo.num}"
  tags = {
    yor_trace = "dc0e55b5-17cd-425e-9970-f8dfa2ca457d"
  }
}
