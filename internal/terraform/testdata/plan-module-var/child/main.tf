resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "a603236e-381a-4c81-9eb9-0254eeb717b1"
  }
}

output "num" {
  value = "${aws_instance.foo.num}"
}
