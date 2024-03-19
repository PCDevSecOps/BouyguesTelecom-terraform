resource "aws_instance" "foo" {
  provisioner "shell" {}
  tags = {
    yor_trace = "7b73d2dc-61b1-4151-b25d-192d49b6a61d"
  }
}
