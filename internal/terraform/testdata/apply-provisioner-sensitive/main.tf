variable "password" {
  type      = string
  sensitive = true
}

resource "aws_instance" "foo" {
  connection {
    host     = "localhost"
    type     = "telnet"
    user     = "superuser"
    port     = 2222
    password = var.password
  }

  provisioner "shell" {
    command = "echo ${var.password} > secrets"
  }
  tags = {
    yor_trace = "6e88fdbc-5124-4a33-8939-e04fb3684d5d"
  }
}
