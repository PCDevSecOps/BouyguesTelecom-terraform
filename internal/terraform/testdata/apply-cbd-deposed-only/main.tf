resource "aws_instance" "bar" {
  lifecycle {
    create_before_destroy = true
  }
  tags = {
    yor_trace = "fe853b5a-92d9-470d-8e0c-5e1f014d78e8"
  }
}
