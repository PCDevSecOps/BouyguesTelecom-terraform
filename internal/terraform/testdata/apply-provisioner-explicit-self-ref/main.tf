resource "aws_instance" "foo" {
  foo = "bar"

  provisioner "shell" {
    command = "${aws_instance.foo.foo}"
  }
  tags = {
    yor_trace = "302de64b-7cf0-469b-8a77-b23d40f145c0"
  }
}
