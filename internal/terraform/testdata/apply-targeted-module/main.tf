module "child" {
  source = "./child"
}

resource "aws_instance" "foo" {
  foo = "bar"
  tags = {
    yor_trace = "d151a705-5752-4257-ad26-3baf1870d8d4"
  }
}

resource "aws_instance" "bar" {
  foo = "bar"
  tags = {
    yor_trace = "893ab7e4-91e4-43aa-bc67-04658e83547c"
  }
}
