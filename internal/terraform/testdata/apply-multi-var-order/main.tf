variable "num" {
  default = 15
}

resource "aws_instance" "bar" {
  count = "${var.num}"
  foo   = "index-${count.index}"
  tags = {
    yor_trace = "3af15fb7-4575-4f8a-99ff-661e18fb3bda"
  }
}

output "should-be-11" {
  value = "${element(aws_instance.bar.*.foo, 11)}"
}
