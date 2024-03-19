variable "var" {}

resource "aws_instance" "foo" {
  value = "${var.var}"
  tags = {
    yor_trace = "ac9bc341-b210-457f-bd01-08dabac8dae1"
  }
}
