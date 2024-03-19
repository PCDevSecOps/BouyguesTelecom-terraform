resource "aws_instance" "a" {
  foo = "bar"
  tags = {
    yor_trace = "55cc4b93-1d8f-4c69-9aca-981293048b97"
  }
}

module "child" {
  source = "./child"
  in     = aws_instance.a.id
}

output "out" {
  value = aws_instance.a.id
}
