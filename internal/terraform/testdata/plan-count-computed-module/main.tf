resource "aws_instance" "foo" {
  compute = "foo"
  tags = {
    yor_trace = "c445e5e0-e68e-4ddc-8cb8-1a655bf7daaf"
  }
}

module "child" {
  source = "./child"
  value  = "${aws_instance.foo.foo}"
}
