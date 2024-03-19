resource "aws_instance" "a" {
  require_new = "new"
  tags = {
    yor_trace = "b77025ff-953c-4fbc-953a-7dbb74c73a41"
  }
}

output "ids" {
  value = [aws_instance.a.id]
}
