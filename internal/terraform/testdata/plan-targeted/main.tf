resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "d6fcf49b-4534-4883-9558-f6be4ca014b1"
  }
}

resource "aws_instance" "bar" {
  foo = aws_instance.foo.num
  tags = {
    yor_trace = "6be3ed72-9c4b-45fc-a208-e8cd3646ae5d"
  }
}

module "mod" {
  source = "./mod"
  count  = 1
}
