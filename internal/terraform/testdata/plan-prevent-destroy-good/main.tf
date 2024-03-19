resource "aws_instance" "foo" {
  lifecycle {
    prevent_destroy = true
  }
  tags = {
    yor_trace = "e0c71009-bc48-4692-9d1e-86bcd8cd3ff8"
  }
}
