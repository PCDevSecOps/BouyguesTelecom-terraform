module "child" {
  source = "./child"
}

resource "aws_instance" "bar" {
  foo = "${module.child.num}"
  tags = {
    yor_trace = "4b87b72d-f47d-4428-8619-37ee2a79214e"
  }
}
