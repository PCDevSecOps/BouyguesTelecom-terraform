resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "a9b938ab-bd2d-42b8-843b-0d2ca841492b"
  }
}

resource "aws_instance" "bar" {
  foo = "bar"
  tags = {
    yor_trace = "f3cdf06b-2bc6-4bd7-b053-201ec1e809f2"
  }
}

output "foo_num" {
  value = "${aws_instance.foo.num}"
}
