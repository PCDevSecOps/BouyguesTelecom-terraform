resource "aws_instance" "foo" {
  tags = {
    yor_trace = "28086ee4-eb9a-41c4-ab69-44d928268b6b"
  }
}

module "grandchild" {
  source = "./grandchild"
}

output "id" {
  value = "${aws_instance.foo.id}"
}

output "grandchild_id" {
  value = "${module.grandchild.id}"
}
