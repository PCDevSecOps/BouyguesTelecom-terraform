resource "aws_instance" "web" {
  ami = "ami-1234"
  security_groups = [
    "foo",
    "bar",
  ]
  tags = {
    yor_trace = "19835801-8923-43b0-a36e-ebc63250731b"
  }
}
