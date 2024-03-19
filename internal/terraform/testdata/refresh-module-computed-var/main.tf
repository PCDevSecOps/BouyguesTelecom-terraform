module "child" {
  source = "./child"
  value  = "${join(" ", aws_instance.test.*.id)}"
}

resource "aws_instance" "test" {
  value = "yes"
  tags = {
    yor_trace = "2e49fd6a-e211-4b6c-bcd7-79e47d4be06c"
  }
}
