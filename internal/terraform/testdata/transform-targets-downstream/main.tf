resource "aws_instance" "foo" {
  tags = {
    yor_trace = "c6247ff4-7ea3-4750-baa4-2728629d823c"
  }
}

module "child" {
  source = "./child"
}

output "root_id" {
  value = "${aws_instance.foo.id}"
}

output "child_id" {
  value = "${module.child.id}"
}

output "grandchild_id" {
  value = "${module.child.grandchild_id}"
}
