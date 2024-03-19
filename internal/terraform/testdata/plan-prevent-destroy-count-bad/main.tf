resource "aws_instance" "foo" {
  count   = "1"
  current = "${count.index}"

  lifecycle {
    prevent_destroy = true
  }
  tags = {
    yor_trace = "cfbd26fa-2dfe-4cf4-b3ae-1d887aab8dd9"
  }
}
