variable "mod_count" {}

resource "aws_instance" "foo" {
  count = "${var.mod_count}"
  tags = {
    yor_trace = "6b1371aa-dff7-429b-ac72-401ad95cfa30"
  }
}
