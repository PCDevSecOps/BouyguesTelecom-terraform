resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "23f3a09c-f09b-43b3-9cd4-393d0458805b"
  }
}
