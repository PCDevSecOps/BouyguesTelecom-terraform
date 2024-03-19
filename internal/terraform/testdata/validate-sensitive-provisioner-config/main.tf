variable "secret" {
  type      = string
  default   = " password123"
  sensitive = true
}

resource "aws_instance" "foo" {
  provisioner "test" {
    test_string = var.secret
  }
  tags = {
    yor_trace = "2158bbad-ef61-4ec7-87f9-d2bfcc557d8b"
  }
}
