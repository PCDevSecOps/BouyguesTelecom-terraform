resource "aws_instance" "foo" {
  required_field = "set"

  lifecycle {
    ignore_changes = ["required_field"]
  }
  tags = {
    yor_trace = "ab67e4a5-9324-478f-a1c2-7f574ba83c76"
  }
}
