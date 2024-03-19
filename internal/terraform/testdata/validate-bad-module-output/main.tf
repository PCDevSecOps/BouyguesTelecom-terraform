module "child" {
  source = "./child"
}

resource "aws_instance" "bar" {
  foo = "${module.child.bad}"
  tags = {
    yor_trace = "3a666eee-bb89-4997-8078-18f30b4e2e9a"
  }
}
