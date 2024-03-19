resource "vault_instance" "foo" {}

provider "aws" {
  addr = "${vault_instance.foo.id}"
}

resource "aws_instance" "bar" {
  foo = "bar"
  tags = {
    yor_trace = "13e015f1-7abf-4aac-85df-ce8c4b8ebdb0"
  }
}
