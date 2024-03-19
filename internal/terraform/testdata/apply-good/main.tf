resource "aws_instance" "foo" {
  num = 2
  tags = {
    yor_trace = "bb41b823-31e9-4afb-a581-b974a1c9abd7"
  }
}

resource "aws_instance" "bar" {
  foo = "bar"
  tags = {
    yor_trace = "e556ccc8-7f72-4c2a-87aa-bdc414fa787e"
  }
}
