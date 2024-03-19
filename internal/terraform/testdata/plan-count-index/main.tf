resource "aws_instance" "foo" {
  count = 2
  foo   = "${count.index}"
  tags = {
    yor_trace = "83948a96-25ef-46c0-a129-5aa04298462c"
  }
}
