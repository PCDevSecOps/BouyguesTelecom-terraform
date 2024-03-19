module "child" {
  source = "./child"
}

resource "aws_instance" "foo" {
  foo = "${module.child.output}"
  tags = {
    yor_trace = "612206c0-771a-4819-be8b-c24c8fc9e649"
  }
}
