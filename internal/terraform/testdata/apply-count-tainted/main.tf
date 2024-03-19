resource "aws_instance" "foo" {
  count = 2
  foo   = "foo"
  tags = {
    yor_trace = "a8051c98-5974-4d83-be51-c4300e94203a"
  }
}
