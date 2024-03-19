resource "aws_instance" "foo" {
  value = "2"
  tags = {
    yor_trace = "2a0c36df-2157-451d-aacb-b52d2dce6185"
  }
}

resource "aws_instance" "bar" {
  foo = "${aws_instance.foo.value}"
  tags = {
    yor_trace = "8563ff76-cb56-4de2-b484-124bb0a7147d"
  }
}
