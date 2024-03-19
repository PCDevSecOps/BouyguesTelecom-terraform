variable "num" {
  default = 15
}

resource "aws_instance" "bar" {
  count = "${var.num}"
  foo   = "index-${count.index}"
  tags = {
    yor_trace = "d90b118a-5f9e-43d2-be01-d22c56665694"
  }
}

resource "aws_instance" "baz" {
  count = "${var.num}"
  foo   = "baz-${element(aws_instance.bar.*.foo, count.index)}"
  tags = {
    yor_trace = "27b816c0-e7f9-40f6-b30b-f0bb3ea0033b"
  }
}

output "should-be-11" {
  value = "${element(aws_instance.baz.*.foo, 11)}"
}
