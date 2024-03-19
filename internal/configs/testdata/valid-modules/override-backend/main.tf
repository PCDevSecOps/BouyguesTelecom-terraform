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
    yor_trace = "e2cecc3d-323e-4069-aeee-a4a3b1757410"
  }
}
