resource "aws_instance" "foo" {
  tags = {
    yor_trace = "d8706086-3304-4ddb-bfd1-013fc398ce14"
  }
}

output "instance_id" {
  # Even though we're targeting just the resource above, this should still
  # be populated because outputs are implicitly targeted when their
  # dependencies are
  value = "${aws_instance.foo.id}"
}
