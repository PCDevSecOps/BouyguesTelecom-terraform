resource "aws_instance" "bar" {
  foo = "bar"
  tags = {
    yor_trace = "b9fa044a-094a-427e-8f16-79322cdef2c5"
  }
}
