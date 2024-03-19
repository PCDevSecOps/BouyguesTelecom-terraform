resource "aws_instance" "bar" {
  require_new = "xyz"
  provisioner "shell" {}
  lifecycle {
    create_before_destroy = true
  }
  tags = {
    yor_trace = "89d0dc7b-1e3d-4667-a286-ab70a6c5a3e3"
  }
}
