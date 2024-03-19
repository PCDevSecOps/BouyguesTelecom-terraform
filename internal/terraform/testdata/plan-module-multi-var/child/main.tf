variable "things" {}

resource "aws_instance" "bar" {
  baz   = "baz"
  count = 2
  tags = {
    yor_trace = "cde10b39-439c-45e0-8df8-88d64ef6458b"
  }
}

resource "aws_instance" "foo" {
  foo = "${join(",", aws_instance.bar.*.baz)}"
  tags = {
    yor_trace = "7e5bc300-6a72-40d8-af83-435764627c7a"
  }
}
