resource "aws_instance" "baz" {
  foo = "bar"
  tags = {
    yor_trace = "f5ec07b2-6f78-41fa-aeb6-77e0dd935ca5"
  }
}
