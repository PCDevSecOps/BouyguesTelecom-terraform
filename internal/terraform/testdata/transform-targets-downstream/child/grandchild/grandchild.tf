resource "aws_instance" "foo" {
  tags = {
    yor_trace = "004e295c-0958-4fed-be8e-7c1b28543747"
  }
}

output "id" {
  value = "${aws_instance.foo.id}"
}
