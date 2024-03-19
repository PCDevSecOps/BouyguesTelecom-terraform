resource "aws_instance" "bar" {
  provisioner "shell" {}
  tags = {
    yor_trace = "c279027d-eb3d-423d-a1c2-b21b92b1d9e3"
  }
}
