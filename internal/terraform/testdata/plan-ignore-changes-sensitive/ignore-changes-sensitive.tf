variable "foo" {
  sensitive = true
}

resource "aws_instance" "foo" {
  ami = var.foo

  lifecycle {
    ignore_changes = [ami]
  }
  tags = {
    yor_trace = "ec0c20e7-51a0-4c52-9ac2-38bb4d01cb93"
  }
}
