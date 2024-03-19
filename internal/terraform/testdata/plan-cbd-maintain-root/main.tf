resource "aws_instance" "foo" {
  count = "2"

  lifecycle {
    create_before_destroy = true
  }
  tags = {
    yor_trace = "8cc6d0c1-706b-4af5-902e-1ca45d81c09d"
  }
}

resource "aws_instance" "bar" {
  count = "2"

  lifecycle {
    create_before_destroy = true
  }
  tags = {
    yor_trace = "34240331-fa3a-496c-ae2a-e0407f732213"
  }
}

output "out" {
  value = "${aws_instance.foo.0.id}"
}
