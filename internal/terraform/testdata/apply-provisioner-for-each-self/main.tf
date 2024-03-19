resource "aws_instance" "foo" {
  for_each = toset(["a", "b", "c"])
  foo      = "number ${each.value}"

  provisioner "shell" {
    command = "${self.foo}"
  }
  tags = {
    yor_trace = "5999c3ca-a5d8-4237-ad5c-073a43b11baf"
  }
}
