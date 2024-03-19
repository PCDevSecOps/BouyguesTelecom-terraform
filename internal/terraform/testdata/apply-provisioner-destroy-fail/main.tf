resource "aws_instance" "foo" {
  foo = "bar"

  provisioner "shell" {
    command    = "one"
    when       = "destroy"
    on_failure = "continue"
  }

  provisioner "shell" {
    command = "two"
    when    = "destroy"
  }
  tags = {
    yor_trace = "ef25639a-8d40-4d2d-b2f5-93c5764307f0"
  }
}
