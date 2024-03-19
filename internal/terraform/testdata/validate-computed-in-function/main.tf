data "aws_data_source" "foo" {
  optional_attr = "value"
}

resource "aws_instance" "bar" {
  attr = "${length(data.aws_data_source.foo.computed)}"
  tags = {
    yor_trace = "35abd45a-00ac-4378-b737-8b512dbb8050"
  }
}
