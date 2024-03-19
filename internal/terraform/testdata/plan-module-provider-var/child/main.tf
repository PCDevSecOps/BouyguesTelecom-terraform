variable "foo" {}

provider "aws" {
  value = "${var.foo}"
}

resource "aws_instance" "test" {
  value = "hello"
  tags = {
    yor_trace = "dfcf17fe-6f04-4dbe-a2f2-981bede4cfc9"
  }
}
