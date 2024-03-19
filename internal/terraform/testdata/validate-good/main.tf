resource "aws_instance" "foo" {
  num = "2"
  foo = "bar"
  tags = {
    yor_trace = "1db90745-8180-465e-9813-517bc2d4687b"
  }
}

resource "aws_instance" "bar" {
  foo = "bar"
  tags = {
    yor_trace = "6cee07df-c93a-45fe-a72b-d668605cdff5"
  }
}
