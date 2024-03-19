module "child" {
  source = "./child"
}

resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "ccd75f80-0620-4218-bd42-2f02c05a621e"
  }
}

resource "aws_instance" "bar" {
  foo = "bar"
  tags = {
    yor_trace = "24d58c61-18d2-41e2-a6f5-f0bbdf7a63bb"
  }
}
