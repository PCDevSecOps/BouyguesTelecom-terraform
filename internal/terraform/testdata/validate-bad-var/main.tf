resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "25743efc-4ae9-46a8-bb11-f725262fddc6"
  }
}

resource "aws_instance" "bar" {
  foo = "${var.foo}"
  tags = {
    yor_trace = "101b2d65-3095-441f-88a5-dd7ef0047219"
  }
}
