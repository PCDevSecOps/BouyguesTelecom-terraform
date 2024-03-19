resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "abea34d8-53f8-4a2a-8461-8c32f622c4d7"
  }
}

resource "aws_instance" "bar" {
  foo   = "bar"
  count = 3
  tags = {
    yor_trace = "084f51dd-39eb-4ab5-8584-a904eeec7259"
  }
}

output "foo_num" {
  value = "${join(",", aws_instance.bar.*.foo)}"
}
