resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "16cdc186-18e2-4757-ad49-1499f1c420aa"
  }
}

resource "aws_instance" "bar" {
  foo   = "bar"
  count = 3
  tags = {
    yor_trace = "5994c7cc-7554-4454-9439-37aece73e957"
  }
}

output "foo_num" {
  value = "${aws_instance.bar.0.foo}"
}
