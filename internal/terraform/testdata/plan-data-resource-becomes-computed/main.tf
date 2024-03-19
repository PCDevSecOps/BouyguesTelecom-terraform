resource "aws_instance" "foo" {
  tags = {
    yor_trace = "83f54484-f1ae-4edb-98e3-803631646ea8"
  }
}

data "aws_data_source" "foo" {
  foo = "${aws_instance.foo.computed}"
}
