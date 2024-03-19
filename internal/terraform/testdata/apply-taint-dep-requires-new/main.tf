resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "a902e53e-fbc2-48e6-8e07-f5d445e8b236"
  }
}

resource "aws_instance" "bar" {
  foo         = "${aws_instance.foo.id}"
  require_new = "yes"
  tags = {
    yor_trace = "8ca3e9ff-9801-4add-8039-b9f4d50baaf1"
  }
}
