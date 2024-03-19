resource "aws_instance" "foo" {
  lifecycle {
    create_before_destroy = true
  }
  tags = {
    yor_trace = "01f9e1de-7472-4d02-86b6-76a1c51a9ef5"
  }
}
