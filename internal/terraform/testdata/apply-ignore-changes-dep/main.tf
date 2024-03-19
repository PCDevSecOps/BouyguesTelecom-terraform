resource "aws_instance" "foo" {
  count = 2
  ami   = "ami-bcd456"
  lifecycle {
    ignore_changes = ["ami"]
  }
  tags = {
    yor_trace = "1aee23c8-c8ca-47dd-8b0f-2f656f997ddb"
  }
}

resource "aws_eip" "foo" {
  count    = 2
  instance = "${aws_instance.foo.*.id[count.index]}"
  tags = {
    yor_trace = "bbb57fd1-d4d9-4d51-b804-c76521a38d0c"
  }
}
