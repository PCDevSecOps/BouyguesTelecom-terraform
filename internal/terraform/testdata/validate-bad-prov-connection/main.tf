resource "aws_instance" "foo" {
  provisioner "shell" {
    test_string = "test"
    connection {
      user = "test"
    }
  }
  tags = {
    yor_trace = "4265bcc8-2d1d-40c5-a481-6b1b2e10097f"
  }
}
