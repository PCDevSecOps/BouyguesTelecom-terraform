resource "aws_instance" "foo" {
  cwd    = "${path.cwd}/barpath"
  module = "${path.module}/foopath"
  root   = "${path.root}/barpath"
  tags = {
    yor_trace = "e398db7d-03ce-4392-a58d-5f64250931f8"
  }
}
