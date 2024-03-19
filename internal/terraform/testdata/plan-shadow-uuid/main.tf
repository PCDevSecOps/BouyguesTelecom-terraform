resource "aws_instance" "test" {
  value = "${uuid()}"
  tags = {
    yor_trace = "6e4e5b69-1b5e-470e-acba-b984c1016b11"
  }
}
