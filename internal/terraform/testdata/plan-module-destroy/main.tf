module "child" {
  source = "./child"
}

resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "1d545a0c-7dbd-4123-8db0-bcc1c09fd2fa"
  }
}
