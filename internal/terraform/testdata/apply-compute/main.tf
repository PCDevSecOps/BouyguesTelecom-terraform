variable "value" {
  default = ""
}

resource "aws_instance" "foo" {
  num           = "2"
  compute       = "value"
  compute_value = "${var.value}"
  tags = {
    yor_trace = "52411290-de7c-4a97-a90c-b51b8ef57e5a"
  }
}

resource "aws_instance" "bar" {
  foo = "${aws_instance.foo.value}"
  tags = {
    yor_trace = "4907e434-7b25-4de5-9dfc-7c70550aef29"
  }
}
