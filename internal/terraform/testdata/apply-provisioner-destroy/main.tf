resource "aws_instance" "foo" {
  for_each = var.input
  foo      = "bar"

  provisioner "shell" {
    command = "create ${each.key} ${each.value}"
  }

  provisioner "shell" {
    when    = "destroy"
    command = "destroy ${each.key} ${self.foo}"
  }
  tags = {
    yor_trace = "9f4ef4aa-a8ad-4f3d-bb3b-b6464f3c11e0"
  }
}

variable "input" {
  type    = map(string)
  default = {}
}
