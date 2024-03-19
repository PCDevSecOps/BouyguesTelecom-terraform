variable "foo" {
  default = "2"
}

resource "aws_instance" "foo" {
  foo   = "foo"
  count = "${var.foo}"
  tags = {
    yor_trace = "6dbfea0e-7582-4c32-bf73-8635b6b33cf3"
  }
}
