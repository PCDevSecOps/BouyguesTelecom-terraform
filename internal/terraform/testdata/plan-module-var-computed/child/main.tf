resource "aws_instance" "foo" {
  compute = "foo"
  tags = {
    yor_trace = "eb082ea0-44d2-4b9c-bd47-ccd461c196f2"
  }
}

output "num" {
  value = "${aws_instance.foo.foo}"
}
