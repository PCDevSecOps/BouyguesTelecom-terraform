provider "aws" {
  foo = "bar"
}

resource "aws_instance" "test" {
  provisioner "shell" {
    test_string = "foo"
  }
  tags = {
    yor_trace = "3b7ce7a9-3c56-483a-9cf7-aa751c56488b"
  }
}
