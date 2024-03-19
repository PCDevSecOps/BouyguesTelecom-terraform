resource "aws_instance" "foo" {
  tags = {
    yor_trace = "63b80ca7-5af8-4de8-8985-87fe69636807"
  }
}

resource "aws_instance" "bar" {
  tags = {
    yor_trace = "8907173c-cbb5-4e36-be5c-7eb99a0d0b15"
  }
}
