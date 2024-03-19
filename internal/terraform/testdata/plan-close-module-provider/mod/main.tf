provider "aws" {
  alias = "mod"
}

resource "aws_instance" "bar" {
  provider = "aws.mod"
  tags = {
    yor_trace = "70516a7b-29dc-46fb-af6b-4a1d7e7fdd5e"
  }
}
