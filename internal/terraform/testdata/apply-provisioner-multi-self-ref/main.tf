resource "aws_instance" "foo" {
  count = 3
  foo   = "number ${count.index}"

  provisioner "shell" {
    command = "${self.foo}"
  }
  tags = {
    yor_trace = "84f6c7a5-c36b-41db-a8dd-e1d2b0aef8ce"
  }
}
