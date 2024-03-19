resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "ba1e4e59-fd7d-47af-8426-3377946d62a2"
  }
}
