resource "aws_instance" "web" {
  foo   = "${aws_instance.web.0.foo}"
  count = 4
  tags = {
    yor_trace = "bf1272c8-177b-494c-b3d1-d379f87681b4"
  }
}
