resource "aws_instance" "foo" {
  count   = 2
  compute = "ip.#"
  tags = {
    yor_trace = "2e757219-1e5f-4cb6-ace4-3b956e7ecb4c"
  }
}

resource "aws_instance" "bar" {
  count = 1
  foo   = "${aws_instance.foo.*.ip[count.index]}"
  tags = {
    yor_trace = "8c9b73ff-ec69-4145-b28f-ca1ed1373b1f"
  }
}
