resource "aws_instance" "foo" {
  required_field = "set"

  lifecycle {
    ignore_changes = all
  }
  tags = {
    yor_trace = "d253d86b-8be3-41bc-afa6-d74fa6d0f5d6"
  }
}
