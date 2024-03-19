module "child" {
  source = "./child"
}

resource "aws_instance" "bar" {
  foo = "${module.child.num}"
  tags = {
    yor_trace = "792e5142-d312-4e86-98d6-c439841c25ac"
  }
}
