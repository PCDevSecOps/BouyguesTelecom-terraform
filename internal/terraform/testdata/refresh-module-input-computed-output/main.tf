module "child" {
  input  = aws_instance.bar.foo
  source = "./child"
}

resource "aws_instance" "bar" {
  compute = "foo"
  tags = {
    yor_trace = "582310c0-0a9e-4be3-bd94-62e13ef2335e"
  }
}
