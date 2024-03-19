resource "aws_instance" "foo" {
  value = "2"
  tags = {
    yor_trace = "9850637b-cacb-4968-b7aa-884e775c7b00"
  }
}

resource "aws_instance" "bar" {
  foo = "${aws_instance.foo.value}"
  tags = {
    yor_trace = "372e0bc2-b407-4e22-8b78-93e1dc250732"
  }
}
