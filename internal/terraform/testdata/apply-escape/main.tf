resource "aws_instance" "bar" {
  foo = "${"\"bar\""}"
  tags = {
    yor_trace = "09054930-1ba3-413a-aa06-c25cc808c050"
  }
}
