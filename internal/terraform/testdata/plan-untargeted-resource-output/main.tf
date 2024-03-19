module "mod" {
  source = "./mod"
}


resource "aws_instance" "c" {
  name = "${module.mod.output}"
  tags = {
    yor_trace = "90ca53b9-44e6-4638-8411-a245e5702537"
  }
}
