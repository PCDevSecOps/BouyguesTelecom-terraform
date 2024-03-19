resource "aws_instance" "c" {
  ami = "grandchild"
  tags = {
    yor_trace = "36328e91-b81d-4c35-9a77-9f78339d5474"
  }
}
