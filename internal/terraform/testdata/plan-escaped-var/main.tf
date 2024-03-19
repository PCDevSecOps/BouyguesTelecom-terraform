resource "aws_instance" "foo" {
  foo = "bar-$${baz}"
  tags = {
    yor_trace = "ab7e8c5c-b22a-482c-9f21-9cea7cfd6c30"
  }
}
