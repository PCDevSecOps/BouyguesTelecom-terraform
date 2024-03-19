module "child" {
  source = "./child"
}

resource "aws_instance" "bar" {
  foo = "${module.child.good}"
  tags = {
    yor_trace = "f5ceead9-7192-4e9f-aa0e-2f3c6aa5942f"
  }
}
