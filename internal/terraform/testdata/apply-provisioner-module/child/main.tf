resource "aws_instance" "bar" {
  provisioner "shell" {
    foo = "bar"
  }
  tags = {
    yor_trace = "0ec06e1c-b793-4ac5-a673-610f76d3889d"
  }
}
