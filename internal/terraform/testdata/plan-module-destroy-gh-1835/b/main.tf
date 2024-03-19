variable "a_id" {}

resource "aws_instance" "b" {
  foo = "echo ${var.a_id}"
  tags = {
    yor_trace = "77ba447c-5378-47be-a615-69c481e42c56"
  }
}
