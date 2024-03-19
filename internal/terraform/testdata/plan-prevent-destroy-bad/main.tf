resource "aws_instance" "foo" {
  require_new = "yes"

  lifecycle {
    prevent_destroy = true
  }
  tags = {
    yor_trace = "9afab0d2-b28d-4583-959d-695fc0699fdb"
  }
}
