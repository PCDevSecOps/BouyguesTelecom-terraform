variable "sensitive_var" {
  default   = "foo"
  sensitive = true
}

resource "aws_instance" "foo" {
  foo = var.sensitive_var
  tags = {
    yor_trace = "0bfab747-d2c0-48a0-94c0-7d4e024878a8"
  }
}