resource "aws_instance" "foo" {
  count = 3
  tags = {
    yor_trace = "87e1daf5-bf90-4854-ae3c-6cfaa1c09bbf"
  }
}
