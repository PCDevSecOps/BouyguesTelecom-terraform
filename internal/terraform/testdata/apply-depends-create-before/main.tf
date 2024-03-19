resource "aws_instance" "web" {
  require_new = "ami-new"
  lifecycle {
    create_before_destroy = true
  }
  tags = {
    yor_trace = "65738bdf-7cb6-4ad7-a856-dce69921f204"
  }
}

resource "aws_instance" "lb" {
  instance = aws_instance.web.id
  tags = {
    yor_trace = "a69dcfbc-303b-43f7-96ba-7be31da1df27"
  }
}
