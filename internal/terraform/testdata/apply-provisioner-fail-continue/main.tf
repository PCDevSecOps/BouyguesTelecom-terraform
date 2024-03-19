resource "aws_instance" "foo" {
  foo = "bar"

  provisioner "shell" {
    on_failure = "continue"
  }
  tags = {
    yor_trace = "dd87a7e2-aebf-4f91-a2e5-af601bed76ed"
  }
}
