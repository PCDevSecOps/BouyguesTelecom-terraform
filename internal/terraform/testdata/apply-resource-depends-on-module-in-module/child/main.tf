module "grandchild" {
  source = "./child"
}

resource "aws_instance" "b" {
  ami        = "child"
  depends_on = ["module.grandchild"]
  tags = {
    yor_trace = "9cfd0b0f-a342-4c7f-84cd-97ced3d3a3d8"
  }
}
