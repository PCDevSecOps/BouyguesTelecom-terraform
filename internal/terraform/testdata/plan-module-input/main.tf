module "child" {
  input  = "42"
  source = "./child"
}

resource "aws_instance" "bar" {
  foo = "2"
  tags = {
    yor_trace = "c634c545-9f96-4faf-9ed3-b0912ef276a9"
  }
}
