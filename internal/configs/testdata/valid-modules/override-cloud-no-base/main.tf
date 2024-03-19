resource "aws_instance" "web" {
  ami = "ami-1234"
  security_groups = [
    "foo",
    "bar",
  ]
  tags = {
    yor_trace = "a796dce4-1a76-435f-a083-cf43168f029f"
  }
}
