# Empty
provider "aws" {}

resource "aws_instance" "foo" {
  id = "bar"
  tags = {
    yor_trace = "e3fa19fd-154b-4839-8fac-4fee783de81c"
  }
}

module "nested" {
  source = "./submodule"
}
