variable "mod_count_child2" {}

resource "aws_instance" "foo" {
  count = "${var.mod_count_child2}"
  tags = {
    yor_trace = "02fa6276-6742-4a88-a3b2-c1e5604a1f1c"
  }
}
