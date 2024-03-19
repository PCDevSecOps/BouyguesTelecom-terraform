# expressions with variable reference
variable "foo" {
  type = string
}

resource "aws_instance" "foo" {
  for_each = toset(
    [for i in range(0, 3) : sha1("${i}${var.foo}")]
  )
  foo = "foo"
  tags = {
    yor_trace = "71539fab-9585-4c7d-91a9-d1dc14578387"
  }
}

# referencing another resource, which means it has some unknown values in it
resource "aws_instance" "one" {
  for_each = toset(["a", "b"])
  tags = {
    yor_trace = "f40d8415-349d-4e49-a3bc-206a202391d3"
  }
}

resource "aws_instance" "two" {
  for_each = aws_instance.one
  tags = {
    yor_trace = "94ad2bb1-89ef-4e7f-b2d7-90bdc64383ae"
  }
}
