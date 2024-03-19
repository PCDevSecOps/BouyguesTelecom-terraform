variable "amis" {
  default = {
    us-east-1 = "foo"
    us-west-2 = "foo"
  }
}

variable "test_list" {
  type = list(string)
}

variable "test_map" {
  type = map(string)
}

variable "bar" {
  default = "baz"
}

variable "foo" {}

resource "aws_instance" "foo" {
  num  = "2"
  bar  = var.bar
  list = var.test_list
  map  = var.test_map
  tags = {
    yor_trace = "6c1d246e-c52e-4222-9c73-c5c616a0101f"
  }
}

resource "aws_instance" "bar" {
  foo = var.foo
  bar = var.amis[var.foo]
  baz = var.amis["us-east-1"]
  tags = {
    yor_trace = "4cba7912-1019-41ae-8dbb-08aa27b5ee81"
  }
}
