resource "aws_instance" "foo" {
  count = 3
  tags = {
    yor_trace = "bc7b6d1b-6103-4019-bb54-e907a367e0e6"
  }
}

resource "aws_instance" "bar" {
  foo = ["${aws_instance.foo.*.id}"]
  tags = {
    yor_trace = "6f875b31-5d9f-4764-a970-ba028f779620"
  }
}
