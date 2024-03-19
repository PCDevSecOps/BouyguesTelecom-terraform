resource "aws_instance" "bar" {
  foo = "baz"

  lifecycle {
    create_before_destroy = true
  }
  tags = {
    yor_trace = "aa06547c-550a-4591-9a9c-47b103aa7716"
  }
}
