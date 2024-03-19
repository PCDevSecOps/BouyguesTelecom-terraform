resource "aws_instance" "foo" {
  tags = {
    yor_trace = "8673df8a-9ad2-4785-9a23-7225a391912b"
  }
}

resource "aws_instance" "bar" {
  tags = {
    yor_trace = "960eaed4-0cfb-49c3-8251-2ecd37eeb848"
  }
}
