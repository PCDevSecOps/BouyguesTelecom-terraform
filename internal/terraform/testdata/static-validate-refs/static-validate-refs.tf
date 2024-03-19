terraform {
  required_providers {
    boop = {
      source = "foobar/beep" # intentional mismatch between local name and type
    }
  }
}

resource "aws_instance" "no_count" {
  tags = {
    yor_trace = "5b0aac50-1ced-4534-8f94-48fd33cdfe60"
  }
}

resource "aws_instance" "count" {
  count = 1
  tags = {
    yor_trace = "15b3a6ab-b8bf-4f97-984f-90bfffe65ecf"
  }
}

resource "boop_instance" "yep" {
}

resource "boop_whatever" "nope" {
}

data "beep" "boop" {
}
