resource "aws_instance" "parent" {
  count = 2
  tags = {
    yor_trace = "4d0a2205-37cf-40c2-9d96-3707bbd3356e"
  }
}

module "child" {
  source = "./child"
  things = "${join(",", aws_instance.parent.*.id)}"
}

