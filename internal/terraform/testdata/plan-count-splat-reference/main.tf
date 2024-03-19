resource "aws_instance" "foo" {
  name  = "foo ${count.index}"
  count = 3
  tags = {
    yor_trace = "9c5d09d6-4b65-47c9-9c64-3a58fd7d863a"
  }
}

resource "aws_instance" "bar" {
  foo_name = "${aws_instance.foo.*.name[count.index]}"
  count    = 3
  tags = {
    yor_trace = "2e908c52-2df6-491f-a51f-4eb9b2d04f51"
  }
}
