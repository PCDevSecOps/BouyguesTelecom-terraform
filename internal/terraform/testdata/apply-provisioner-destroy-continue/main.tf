resource "aws_instance" "foo" {
  foo = "bar"

  provisioner "shell" {
    command    = "one"
    when       = "destroy"
    on_failure = "continue"
  }

  provisioner "shell" {
    command    = "two"
    when       = "destroy"
    on_failure = "continue"
  }
  tags = {
    yor_trace = "79d002a4-6b5e-4e44-a36f-1debb6e32fdd"
  }
}
