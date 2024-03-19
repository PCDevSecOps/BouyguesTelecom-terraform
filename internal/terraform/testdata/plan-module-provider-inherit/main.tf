module "child" {
  source = "./child"
}

provider "aws" {
  from = "root"
}

resource "aws_instance" "foo" {
  from = "root"
  tags = {
    yor_trace = "917713bb-f327-4f2f-b8f5-ba7b4d2a307b"
  }
}
