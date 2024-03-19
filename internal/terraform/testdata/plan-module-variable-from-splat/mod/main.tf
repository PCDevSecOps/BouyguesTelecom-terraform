variable "param" {
  type = list(string)
}

resource "aws_instance" "test" {
  count = "2"
  thing = "doesnt"
  tags = {
    yor_trace = "fd24e20d-d25e-473b-9332-6c779919eb6c"
  }
}

output "out_from_splat" {
  value = aws_instance.test.*.thing
}
