module "child" {
  source = "./child"
  leader = true
}

resource "aws_instance" "bar" {
  foo = "${module.child.leader}"
  tags = {
    yor_trace = "34fc2253-1b6f-4112-90f8-c79af87a470b"
  }
}
