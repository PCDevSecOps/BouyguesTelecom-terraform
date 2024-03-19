resource "aws_instance" "child" {
  ami = "child"
  tags = {
    yor_trace = "f30079a1-012e-4a96-b641-8595e4958353"
  }
}
