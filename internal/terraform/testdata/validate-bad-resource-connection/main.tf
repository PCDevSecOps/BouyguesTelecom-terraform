resource "aws_instance" "foo" {
  connection {
    user = "test"
  }
  provisioner "shell" {
    test_string = "test"
  }
  tags = {
    yor_trace = "5cd97b95-adc4-43f2-aaca-b7aa04f0bdea"
  }
}
