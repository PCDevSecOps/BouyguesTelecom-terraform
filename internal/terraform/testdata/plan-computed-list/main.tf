resource "aws_instance" "foo" {
  num     = "2"
  compute = "list.#"
  tags = {
    yor_trace = "5bad3540-fbe6-463e-b3c2-d2ddbfcc7e72"
  }
}

resource "aws_instance" "bar" {
  foo = aws_instance.foo.list.0
  tags = {
    yor_trace = "ae86dad7-88f2-4b96-b951-3d5338eee20a"
  }
}
