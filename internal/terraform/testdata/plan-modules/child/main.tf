resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "e19a0023-aede-4452-91b7-522e004efaa0"
  }
}
