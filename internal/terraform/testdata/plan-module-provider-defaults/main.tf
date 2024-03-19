module "child" {
  source = "./child"
}

provider "aws" {
  from = "root"
}

resource "aws_instance" "foo" {
  from = "root"
  tags = {
    yor_trace = "504ac24a-dd27-4432-b25b-242b63c0ea93"
  }
}
