resource "aws_instance" "bar" {
  require_new = "xyz"
  lifecycle {
    create_before_destroy = true
  }
  tags = {
    yor_trace = "210e29a5-164e-46b2-86ab-7b64bfa4a460"
  }
}
