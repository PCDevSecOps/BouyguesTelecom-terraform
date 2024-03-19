resource "aws_instance" "a" {
  require_new = "new"
  lifecycle {
    create_before_destroy = true
  }
  tags = {
    yor_trace = "7fdfa02a-fc08-4d41-a396-0a13e73009bd"
  }
}

output "ids" {
  value = [aws_instance.a.id]
}
