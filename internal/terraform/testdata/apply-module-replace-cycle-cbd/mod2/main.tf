resource "aws_instance" "b" {
  count       = length(var.ids)
  require_new = var.ids[count.index]
  tags = {
    yor_trace = "77782b9e-88ad-41b7-9acb-d16cee915e0f"
  }
}

variable "ids" {
  type = list(string)
}
