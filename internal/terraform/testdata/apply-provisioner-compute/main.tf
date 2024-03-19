variable "value" {}

resource "aws_instance" "foo" {
  num           = "2"
  compute       = "value"
  compute_value = "${var.value}"
  tags = {
    yor_trace = "b5c47494-32c6-48ad-b315-8b1e7d5a22cc"
  }
}

resource "aws_instance" "bar" {
  provisioner "shell" {
    command = "${aws_instance.foo.value}"
  }
  tags = {
    yor_trace = "427b6dad-2968-4517-8b8e-d31ff31923a5"
  }
}
