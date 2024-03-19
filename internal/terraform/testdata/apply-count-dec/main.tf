resource "aws_instance" "foo" {
  foo   = "foo"
  count = 2
  tags = {
    yor_trace = "49eadd68-3af4-4548-821a-8a5047425425"
  }
}

resource "aws_instance" "bar" {
  foo = "bar"
  tags = {
    yor_trace = "b2be17e8-05d9-4766-8add-861398a3a273"
  }
}
