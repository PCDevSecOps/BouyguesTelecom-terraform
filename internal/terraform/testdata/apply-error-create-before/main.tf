resource "aws_instance" "bar" {
  require_new = "xyz"
  lifecycle {
    create_before_destroy = true
  }
  tags = {
    yor_trace = "30a26531-447c-4218-8f4b-a4371e014370"
  }
}
