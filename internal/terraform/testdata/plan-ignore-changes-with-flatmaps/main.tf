resource "aws_instance" "foo" {
  user_data   = "x"
  require_new = "yes"

  set = [{
    a = "1"
    b = "2"
  }]

  lst = ["j", "k"]

  lifecycle {
    ignore_changes = ["require_new"]
  }
  tags = {
    yor_trace = "f9cb8319-ea63-45d8-a360-09bf99f21d58"
  }
}
