provider "aws" {

}

provider "template" {
  alias = "foo"
}

resource "aws_instance" "foo" {

  tags = {
    yor_trace = "af36b1e8-3576-4b36-bcf3-b59a3d604e0c"
  }
}

resource "null_resource" "foo" {

}

terraform {
  required_providers {
    test = {
      source = "hashicorp/test"
    }
  }
}
