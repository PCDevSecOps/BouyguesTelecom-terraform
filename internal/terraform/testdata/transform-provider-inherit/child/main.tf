provider "aws" {
  alias = "bar"
}

resource "aws_instance" "thing" {
  provider = aws.bar
  tags = {
    yor_trace = "6b37045b-1136-46e3-a000-8805241a1a71"
  }
}
