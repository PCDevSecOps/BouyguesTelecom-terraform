terraform {
  required_providers {
    your-aws = {
      source = "hashicorp/aws"
    }
  }
}

resource "aws_instance" "web" {
  provider = "your-aws"
  tags = {
    yor_trace = "43ecbd51-6054-433b-b2cd-3553bd44cd52"
  }
}
