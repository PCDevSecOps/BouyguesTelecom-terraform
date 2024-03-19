resource "aws_instance" "bar" {
  foo = "bar"
  provisioner "shell" {}
  tags = {
    yor_trace = "ba7c0a43-0c49-4306-ad82-42d570dc7df3"
  }
}
