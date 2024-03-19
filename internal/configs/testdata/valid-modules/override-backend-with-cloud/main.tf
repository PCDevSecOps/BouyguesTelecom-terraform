terraform {
  backend "foo" {
    path = "relative/path/to/terraform.tfstate"
  }
}

resource "aws_instance" "web" {
  ami = "ami-1234"
  security_groups = [
    "foo",
    "bar",
  ]
  tags = {
    yor_trace = "c2792560-fcb4-4921-a8ce-59c42f8cd3ec"
  }
}
