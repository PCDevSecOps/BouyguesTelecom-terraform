resource "aws_instance" "a" {
  id = "a"
  tags = {
    yor_trace = "eede3bc8-1bfd-4944-84af-2441be3f62ad"
  }
}

output "a_output" {
  value = "${aws_instance.a.id}"
}
