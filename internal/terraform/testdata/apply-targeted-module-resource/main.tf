module "child" {
  source = "./child"
}

resource "aws_instance" "bar" {
  foo = "bar"
  tags = {
    yor_trace = "1f7aa505-1ce6-438c-9166-9985662e8f8d"
  }
}
