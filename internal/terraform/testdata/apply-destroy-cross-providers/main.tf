resource "aws_instance" "shared" {
  tags = {
    yor_trace = "50b0a000-04f8-4352-ac1a-c643b4a07ff6"
  }
}

module "child" {
  source = "./child"
  value  = "${aws_instance.shared.id}"
}
