resource "aws_instance" "foo" {
  num     = "2"
  compute = "foo"
  tags = {
    yor_trace = "9d139f61-7cb2-4a42-88f3-2fe8ed365840"
  }
}

resource "aws_instance" "bar" {
  count = "${aws_instance.foo.foo}"
  tags = {
    yor_trace = "b9b1edd4-4799-4b04-975f-4355768fe554"
  }
}
