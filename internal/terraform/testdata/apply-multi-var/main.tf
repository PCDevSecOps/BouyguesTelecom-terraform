variable "num" {}

resource "aws_instance" "bar" {
  count = "${var.num}"
  foo   = "bar${count.index}"
  tags = {
    yor_trace = "ec7bcdd2-dbb3-4300-8efc-7dfd504d42b1"
  }
}

output "output" {
  value = "${join(",", aws_instance.bar.*.foo)}"
}
