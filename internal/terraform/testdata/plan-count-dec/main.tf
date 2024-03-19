resource "aws_instance" "foo" {
  foo = "foo"
  tags = {
    yor_trace = "60ad7a3c-0589-4fe9-9563-67e3d222edd5"
  }
}

resource "aws_instance" "bar" {
  foo = "bar"
  tags = {
    yor_trace = "8b9e2738-27e7-4208-9d91-6604b4e7fb82"
  }
}
