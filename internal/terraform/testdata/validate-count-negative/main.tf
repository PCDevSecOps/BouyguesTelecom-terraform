resource "aws_instance" "test" {
  count = "-5"
  tags = {
    yor_trace = "026719fb-a034-41b1-9bbe-a5228ccd72b4"
  }
}
