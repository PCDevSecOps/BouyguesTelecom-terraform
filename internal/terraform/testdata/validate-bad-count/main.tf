resource "aws_instance" "foo" {
  count = "${list}"
  tags = {
    yor_trace = "8b32d5c6-2064-4aea-8916-5a86ac0d6e74"
  }
}
