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
    yor_trace = "4e9002da-cf4f-4989-8b27-525112e2af96"
  }
}
