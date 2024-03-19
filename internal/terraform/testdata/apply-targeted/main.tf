resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "403237e7-a507-4c91-b8d3-d7e6da958fe9"
  }
}

resource "aws_instance" "bar" {
  foo = "bar"
  tags = {
    yor_trace = "f62841b7-65d3-494f-827c-f69f977409c1"
  }
}
