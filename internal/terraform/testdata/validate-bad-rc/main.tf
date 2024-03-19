resource "aws_instance" "test" {
  foo = "bar"
  tags = {
    yor_trace = "36cd36d6-76a4-495e-9ef2-e853932e5f58"
  }
}
