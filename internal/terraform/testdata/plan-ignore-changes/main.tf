variable "foo" {}

resource "aws_instance" "foo" {
  ami = var.foo

  lifecycle {
    ignore_changes = [ami]
  }
  tags = {
    yor_trace = "2a8dc402-6734-418b-b678-ab67b06ef5cc"
  }
}
