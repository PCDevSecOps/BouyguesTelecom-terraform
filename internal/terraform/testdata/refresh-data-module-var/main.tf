resource "aws_instance" "A" {
  foo = "bar"
  tags = {
    yor_trace = "bdacfc03-dd48-48fe-8600-d9a564583842"
  }
}

module "child" {
  source = "./child"
  key    = "${aws_instance.A.id}"
}
