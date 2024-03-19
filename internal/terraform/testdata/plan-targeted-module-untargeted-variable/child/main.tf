variable "id" {}

resource "aws_instance" "mod" {
  value = "${var.id}"
  tags = {
    yor_trace = "6cd561b8-43f3-450c-961d-b9a21edf29ec"
  }
}
