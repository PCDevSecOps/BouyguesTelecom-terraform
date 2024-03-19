resource "aws_instance" "foo" {
  count = 2
  tags = {
    yor_trace = "78b5eb40-8eb6-413a-a063-80d1f47a54dc"
  }
}

resource "aws_instance" "bar" {
  count = "${length(aws_instance.foo.*.id)}"
  tags = {
    yor_trace = "3180724f-cc85-4733-bef5-12c5cb047884"
  }
}

resource "aws_instance" "baz" {
  count = "${length(aws_instance.bar.*.id)}"
  tags = {
    yor_trace = "078bc2b1-e62f-400f-8d8c-925237727506"
  }
}
