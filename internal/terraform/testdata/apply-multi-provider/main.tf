resource "do_instance" "foo" {
  num = "2"
}

resource "aws_instance" "bar" {
  foo = "bar"
  tags = {
    yor_trace = "f67a77fb-e535-48b6-92a7-db52e40847ad"
  }
}
