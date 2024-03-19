resource "aws_instance" "bar" {
  count = 2
  foo   = "bar"

  lifecycle {
    create_before_destroy = true
  }
  tags = {
    yor_trace = "c687e526-f35a-4e07-a034-eda9c2156d16"
  }
}
