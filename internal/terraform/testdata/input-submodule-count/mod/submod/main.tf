variable "list" {
  type = list(string)
}

resource "aws_instance" "bar" {
  count = var.list[0]
  tags = {
    yor_trace = "cfc90377-153c-4bbc-a3ab-a9b5b4361ee3"
  }
}
