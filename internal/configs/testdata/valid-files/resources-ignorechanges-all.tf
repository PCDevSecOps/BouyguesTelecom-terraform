resource "aws_instance" "web" {
  lifecycle {
    ignore_changes = all
  }
  tags = {
    yor_trace = "facf4cf9-54fd-4e5f-870a-16ed62039d07"
  }
}
