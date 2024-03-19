resource "aws_instance" "foo" {
  count   = "1"
  current = "${count.index}"
  tags = {
    yor_trace = "63d9c27b-9b08-450d-a538-93ccc165fc22"
  }
}
