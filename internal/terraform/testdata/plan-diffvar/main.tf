resource "aws_instance" "foo" {
  num = "3"
  tags = {
    yor_trace = "78b4958c-fe56-4681-a484-a11215b8cf62"
  }
}

resource "aws_instance" "bar" {
  num = aws_instance.foo.num
  tags = {
    yor_trace = "b9a1ef76-480a-4988-9eca-1f27028fe6dc"
  }
}
