resource "aws_instance" "bar" {
  num = "2"
  tags = {
    yor_trace = "89a3528a-6b26-41a8-8b3d-9c71c771c75e"
  }
}
