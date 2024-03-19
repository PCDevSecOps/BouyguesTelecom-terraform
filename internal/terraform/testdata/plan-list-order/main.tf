resource "aws_instance" "a" {
  foo = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 20]
  tags = {
    yor_trace = "2d69ba41-91c2-4f43-b16c-82e115de64d6"
  }
}

resource "aws_instance" "b" {
  foo = "${aws_instance.a.foo}"
  tags = {
    yor_trace = "b41e7d94-47e2-431e-bc27-bb3cab9e27f0"
  }
}
