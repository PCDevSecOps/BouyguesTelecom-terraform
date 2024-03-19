resource "aws_instance" "foo" {
  count = 3
  tags = {
    yor_trace = "27e53bfa-e5ac-4caa-bd37-285f25461095"
  }
}

resource "aws_instance" "bar" {
  foo = length(aws_instance.foo)
  tags = {
    yor_trace = "b761c343-f9cb-497c-9a2e-afcccf542e33"
  }
}
