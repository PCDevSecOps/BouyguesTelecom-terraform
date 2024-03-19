variable "string" {
  default = "foo"
  type    = string
}

variable "list" {
  default = []
  type    = list(string)
}

variable "map" {
  default = {}
  type    = map(string)
}

resource "aws_instance" "bar" {
  string = var.string
  list   = var.list
  map    = var.map
  tags = {
    yor_trace = "5f7b3034-02d8-42d7-884e-346b411e164c"
  }
}
