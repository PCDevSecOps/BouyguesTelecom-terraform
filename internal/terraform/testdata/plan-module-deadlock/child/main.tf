resource "aws_instance" "foo" {
  count = "${length("abc")}"

  lifecycle {
    create_before_destroy = true
  }
  tags = {
    yor_trace = "f8a53b88-41d8-4bb7-b262-9aa72d4db191"
  }
}
