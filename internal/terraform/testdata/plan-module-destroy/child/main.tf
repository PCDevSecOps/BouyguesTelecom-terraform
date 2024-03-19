resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "60e81d07-5be2-491b-99fa-a532f1b51f01"
  }
}
