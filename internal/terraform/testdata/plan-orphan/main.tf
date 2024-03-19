resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "a716b8e2-3af5-45c7-889b-45e8f8ca47e2"
  }
}
