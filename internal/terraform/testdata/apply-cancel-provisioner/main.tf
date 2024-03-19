resource "aws_instance" "foo" {
  num = "2"

  provisioner "shell" {
    foo = "bar"
  }
  tags = {
    yor_trace = "c2547a90-5484-4a71-b479-09d2d651fff2"
  }
}
