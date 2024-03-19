variable "require_new" {
  type = string
}

resource "aws_instance" "web" {
  // require_new is a special attribute recognized by testDiffFn that forces
  // a new resource on every apply
  require_new = var.require_new
  lifecycle {
    create_before_destroy = true
  }
  tags = {
    yor_trace = "ebc3460d-ab46-48fe-aa20-8077c6f84383"
  }
}
