resource "aws_instance" "foo" {
  foo = "bar"
  tags = {
    yor_trace = "d1a50124-1e72-4332-ac4b-ca050ed91e6a"
  }
}

output "value" {
  value = "${aws_instance.foo.id}"
}
