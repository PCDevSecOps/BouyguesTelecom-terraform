resource "aws_instance" "foo" {
  foo = "bar"

  provisioner "shell" {
    command = "${self.foo}"
  }
  tags = {
    yor_trace = "80f09b02-e1da-4937-b168-13a0bbadeca3"
  }
}
