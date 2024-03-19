resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "d3241ba3-ab6f-4690-b968-96c0af61d6b9"
  }
}
