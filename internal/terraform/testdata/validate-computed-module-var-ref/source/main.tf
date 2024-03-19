resource "aws_instance" "source" {
  attr = "foo"
  tags = {
    yor_trace = "99fbd5fb-3126-4d53-9000-86f71cbfc17a"
  }
}

output "sourceout" {
  value = "${aws_instance.source.attr}"
}
