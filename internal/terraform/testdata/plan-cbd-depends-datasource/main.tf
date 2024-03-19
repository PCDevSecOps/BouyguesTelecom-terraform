resource "aws_instance" "foo" {
  count    = 2
  num      = "2"
  computed = data.aws_vpc.bar[count.index].id

  lifecycle {
    create_before_destroy = true
  }
  tags = {
    yor_trace = "537e2cb0-7e24-47e2-a0c0-439584da78ff"
  }
}

data "aws_vpc" "bar" {
  count = 2
  foo   = count.index
}
