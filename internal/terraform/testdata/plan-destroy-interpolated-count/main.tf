variable "list" {
  default = ["1", "2"]
}

resource "aws_instance" "a" {
  count = length(var.list)
  tags = {
    yor_trace = "29899beb-2c96-4344-a75b-42eaa2f11cf8"
  }
}

locals {
  ids = aws_instance.a[*].id
}

module "empty" {
  source = "./mod"
  input  = zipmap(var.list, local.ids)
}

output "out" {
  value = aws_instance.a[*].id
}
