resource "aws_instance" "bar" {
  num = "2"

  provisioner "shell" {
    command = "${aws_instance.bar.num}"
  }
  tags = {
    yor_trace = "05e1cd51-7c64-42c8-9913-f34f026770dd"
  }
}
