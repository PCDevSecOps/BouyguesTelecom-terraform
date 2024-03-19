module "child" {
  source = "./child"
}

resource "aws_instance" "b" {
  id   = "b"
  blah = "${module.child.a_output}"
  tags = {
    yor_trace = "afd004e3-4c42-4114-884a-3e0ef5891757"
  }
}
