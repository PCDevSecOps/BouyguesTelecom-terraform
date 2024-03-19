module "child" {
  input  = "${aws_instance.bar.foo}"
  source = "./child"
}

resource "aws_instance" "bar" {
  compute = "foo"
  tags = {
    yor_trace = "3e691cab-9aa3-4320-918c-c6a8be30ab2f"
  }
}
