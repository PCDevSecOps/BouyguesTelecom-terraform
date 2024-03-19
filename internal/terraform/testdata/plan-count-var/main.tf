variable "instance_count" {}

resource "aws_instance" "foo" {
  count = var.instance_count
  foo   = "foo"
  tags = {
    yor_trace = "db176e64-9afe-4e96-8da6-1b54b5b9e43d"
  }
}

resource "aws_instance" "bar" {
  foo = join(",", aws_instance.foo.*.foo)
  tags = {
    yor_trace = "95be1006-57f7-44d4-b08b-6af6428a6695"
  }
}
