provider "aws" {
  value = "${test_instance.bar.value}"
}

resource "aws_instance" "foo" {
  bar = "value"
  tags = {
    yor_trace = "fd3d629e-584e-43c0-8e51-e2ca02c227be"
  }
}

resource "test_instance" "bar" {
  value = "yes"
}
