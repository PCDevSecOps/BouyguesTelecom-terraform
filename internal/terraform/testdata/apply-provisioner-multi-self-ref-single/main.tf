resource "aws_instance" "foo" {
  count = 3
  foo   = "number ${count.index}"

  provisioner "shell" {
    command = aws_instance.foo[0].foo
    order   = count.index
  }
  tags = {
    yor_trace = "e035c6e2-73f3-4b60-8852-c0a2f5470f5a"
  }
}
