resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "7f92782d-99fc-492e-91e8-14eb7fb53683"
  }
}

resource "aws_instance" "bar" {
  num = "2"
  tags = {
    yor_trace = "08ff9099-6b9b-4605-9f95-815acab1de76"
  }
}
