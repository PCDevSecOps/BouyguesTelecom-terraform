resource "aws_instance" "foo" {
  require_new = "yes"
  tags = {
    yor_trace = "d060ec3b-1ce7-4832-9790-d7f5c354eef7"
  }
}

resource "aws_instance" "bar" {
  require_new = "yes"
  value       = "${aws_instance.foo.id}"

  lifecycle {
    create_before_destroy = true
  }
  tags = {
    yor_trace = "75097035-89f8-4874-9209-3611ce1dd243"
  }
}
