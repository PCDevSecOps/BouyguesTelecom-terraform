resource "aws_instance" "foo" {
  count = 5
  foo   = "foo"
  tags = {
    yor_trace = "5a7205b0-bdd5-4a3b-9db2-a7ba321708ec"
  }
}

resource "aws_instance" "bar" {
  foo = "${join(",", aws_instance.foo.*.foo)}"
  tags = {
    yor_trace = "de8fdc2f-b8db-4ff3-a30c-194cb40ec588"
  }
}
