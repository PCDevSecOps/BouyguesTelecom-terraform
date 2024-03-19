terraform {
  cloud {
    organization                        = "foo"
    should_not_be_present_with_override = true
  }
}

resource "aws_instance" "web" {
  ami = "ami-1234"
  security_groups = [
    "foo",
    "bar",
  ]
  tags = {
    yor_trace = "a895dbac-c1a1-45f6-883c-aa9b0175a818"
  }
}
