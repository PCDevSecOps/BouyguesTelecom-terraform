resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "faa12135-fbd5-4e8f-ba34-aec0de4129b1"
  }
}
