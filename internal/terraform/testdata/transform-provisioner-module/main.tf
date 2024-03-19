resource "aws_instance" "foo" {
  provisioner "shell" {}
  tags = {
    yor_trace = "72f98f5f-67af-4645-b6f8-d0d753eb105a"
  }
}

module "child" {
  source = "./child"
}
