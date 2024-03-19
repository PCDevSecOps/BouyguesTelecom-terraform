provider "aws" {
  alias = "eu"
}

resource "aws_instance" "foo" {
  provider = "aws.eu"
  tags = {
    yor_trace = "5d5f58ab-94b9-4ec0-ba73-7a0b9a5b258b"
  }
}
