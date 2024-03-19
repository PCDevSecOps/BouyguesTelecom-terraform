data "aws_data_source" "foo" {
  compute = "value"
}

resource "aws_instance" "bar" {
  count = "${data.aws_data_source.foo.value}"
  tags = {
    yor_trace = "32c0abc0-8d3f-4f92-83d3-1aa05e6e5689"
  }
}
