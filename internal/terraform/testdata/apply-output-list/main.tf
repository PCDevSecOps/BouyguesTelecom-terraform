resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "3aeddc82-092d-4e21-8924-24ee3226b458"
  }
}

resource "aws_instance" "bar" {
  foo   = "bar"
  count = 3
  tags = {
    yor_trace = "c0db4c7d-e032-4749-9aeb-496e0c013d21"
  }
}

output "foo_num" {
  value = ["${join(",", aws_instance.bar.*.foo)}"]
}
