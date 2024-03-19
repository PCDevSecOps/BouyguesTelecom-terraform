resource "aws_instance" "foo" {
  count = 3
  tags = {
    yor_trace = "b3ddb5d1-c02c-4772-8493-746ec984bf11"
  }
}

resource "aws_instance" "bar" {
  count = 3
  tags = {
    yor_trace = "69cd39cc-9ce9-4664-bd41-9390b0732b36"
  }
}
