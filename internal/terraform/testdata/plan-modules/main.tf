module "child" {
  source = "./child"
}

resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "d54f974b-d3e4-4694-a6a7-558ef3b17007"
  }
}

resource "aws_instance" "bar" {
  foo = "${aws_instance.foo.num}"
  tags = {
    yor_trace = "5e7588a7-79c7-4772-bc9d-f6e625e598b2"
  }
}
