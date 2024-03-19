resource "aws_instance" "web" {
  provisioner "shell" {}
  tags = {
    yor_trace = "57ab4947-d394-40b0-8281-9e7243112a29"
  }
}
