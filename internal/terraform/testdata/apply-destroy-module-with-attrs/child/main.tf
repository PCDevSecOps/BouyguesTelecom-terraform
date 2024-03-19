variable "vpc_id" {}

resource "aws_instance" "child" {
  vpc_id = var.vpc_id
  tags = {
    yor_trace = "c315665f-3966-4501-b05f-fc0162de7e18"
  }
}

output "modout" {
  value = aws_instance.child.id
}
