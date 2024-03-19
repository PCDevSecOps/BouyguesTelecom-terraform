resource "aws_instance" "b" {
  count       = length(var.ids)
  require_new = var.ids[count.index]
  tags = {
    yor_trace = "e2c6ce0b-29ec-4abe-ace9-e1d01eff3ce9"
  }
}

variable "ids" {
  type = list(string)
}
