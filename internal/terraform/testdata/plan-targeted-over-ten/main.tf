resource "aws_instance" "foo" {
  count = 13
  tags = {
    yor_trace = "0bbb0ae5-4aa0-4f0d-9c82-59d506106e76"
  }
}
