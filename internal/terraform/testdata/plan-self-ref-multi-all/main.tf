resource "aws_instance" "web" {
  foo   = aws_instance.web[*].id
  count = 4
  tags = {
    yor_trace = "251b19c5-03b7-4162-8f50-1f8195df1c04"
  }
}
