resource "aws_instance" "foo" {
  foo = "bar"
  tags = {
    yor_trace = "6ea41ab9-4d03-40ac-aa5f-0864a8860993"
  }
}

module "child" {
  source = "./child"

  var = "${aws_instance.foo.foo}"
}
