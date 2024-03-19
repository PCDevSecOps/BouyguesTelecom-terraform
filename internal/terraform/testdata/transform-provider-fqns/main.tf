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
    yor_trace = "d7fb511c-549f-4d18-9600-b567bd21f325"
  }
}
