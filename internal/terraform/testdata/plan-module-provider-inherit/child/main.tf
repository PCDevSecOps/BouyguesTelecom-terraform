resource "aws_instance" "foo" {
  from = "child"
  tags = {
    yor_trace = "f77ed4d5-4bbb-4baf-82bb-dc23155416a8"
  }
}
