resource "aws_instance" "foo" {
  vars = "foo"

  lifecycle {
    ignore_changes = ["vars"]
  }
  tags = {
    yor_trace = "e7303f52-9075-4634-88f5-a4ac893cd87f"
  }
}
