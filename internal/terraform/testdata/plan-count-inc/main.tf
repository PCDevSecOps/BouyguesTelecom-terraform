resource "aws_instance" "foo" {
  foo   = "foo"
  count = 3
  tags = {
    yor_trace = "93e62251-40f8-4a76-907b-48f240ae4b85"
  }
}

resource "aws_instance" "bar" {
  foo = "bar"
  tags = {
    yor_trace = "8c6ff392-0bcc-4c33-bbb6-bd9315046e9c"
  }
}
