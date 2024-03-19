terraform {
  required_providers {
    my-aws = {
      source = "hashicorp/aws"
    }
  }
}

resource "aws_instance" "web" {
  provider = "my-aws"
  tags = {
    yor_trace = "9b562633-0d0a-414c-897d-73a744174899"
  }
}
