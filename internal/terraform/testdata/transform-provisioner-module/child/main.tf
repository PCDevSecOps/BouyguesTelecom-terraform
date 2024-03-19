resource "aws_instance" "foo" {
  provisioner "shell" {}
  tags = {
    yor_trace = "5686071f-c6ee-4a89-be36-aa965ab9eed9"
  }
}
