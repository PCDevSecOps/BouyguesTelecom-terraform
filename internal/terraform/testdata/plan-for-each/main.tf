# maps
resource "aws_instance" "foo" {
  for_each = {
    a = "thing"
    b = "another thing"
    c = "yet another thing"
  }
  num = "3"
  tags = {
    yor_trace = "16e1b33b-22dd-40f3-8864-8640e3411c4f"
  }
}

# sets
resource "aws_instance" "bar" {
  for_each = toset([])
  tags = {
    yor_trace = "2569ade2-a120-4a59-aeab-780bad41e567"
  }
}
resource "aws_instance" "bar2" {
  for_each = toset(["z", "y", "x"])
  tags = {
    yor_trace = "ca03547b-3be2-4b33-905d-31b46f939abd"
  }
}

# an empty map should generate no resource
resource "aws_instance" "baz" {
  for_each = {}
  tags = {
    yor_trace = "21be1d44-ad85-4eb0-8a8f-fc3744f0699e"
  }
}

# references
resource "aws_instance" "boo" {
  foo = aws_instance.foo["a"].num
  tags = {
    yor_trace = "96ee8936-da49-4306-9f3b-b6b7a0e4a213"
  }
}

resource "aws_instance" "bat" {
  for_each = {
    my_key = aws_instance.boo.foo
  }
  foo = each.value
  tags = {
    yor_trace = "49632a05-c5cb-4537-8fcb-51255caeb382"
  }
}

