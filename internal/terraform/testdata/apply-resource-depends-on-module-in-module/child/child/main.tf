resource "aws_instance" "c" {
  ami = "grandchild"
  tags = {
    yor_trace = "fa064abc-07c0-41c9-bd3c-993248ab0124"
  }
}
