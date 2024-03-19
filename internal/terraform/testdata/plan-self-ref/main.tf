resource "aws_instance" "web" {
  foo = "${aws_instance.web.foo}"
  tags = {
    yor_trace = "8c66cdf0-8778-41da-b5da-9ea96ed89961"
  }
}
