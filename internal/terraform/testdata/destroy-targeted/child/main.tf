variable "in" {
}

resource "aws_instance" "b" {
  foo = var.in
  tags = {
    yor_trace = "7a318232-25a9-44f4-a3f3-7a0bf377b0f3"
  }
}

output "out" {
  value = var.in
}
