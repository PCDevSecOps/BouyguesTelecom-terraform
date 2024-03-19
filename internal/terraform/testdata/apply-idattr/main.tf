resource "aws_instance" "foo" {
  num = 42
  tags = {
    yor_trace = "be7d8785-2e3b-49b7-9ce1-7fe86bc9d4d3"
  }
}
