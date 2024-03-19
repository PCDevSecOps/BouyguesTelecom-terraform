resource "aws_instance" "foo" {
  num = "2"
  provisioner "shell" {}
  tags = {
    yor_trace = "87d2da75-e7ad-4b49-9613-8808fc8dbfa0"
  }
}

resource "aws_instance" "bar" {
  foo = "bar"
  provisioner "shell" {}
  tags = {
    yor_trace = "11dac547-da27-40ae-bdaa-7b63fd55057b"
  }
}
