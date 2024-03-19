resource "aws_security_group" "firewall" {
  lifecycle {
    create_before_destroy = true
    prevent_destroy       = true
    ignore_changes = [
      description,
    ]
  }

  connection {
    host = "127.0.0.1"
  }

  provisioner "local-exec" {
    command = "echo hello"

    connection {
      host = "10.1.2.1"
    }
  }

  provisioner "local-exec" {
    command = "echo hello"
  }
  tags = {
    yor_trace = "ae100a29-e294-41cc-8ae9-10b2556f527e"
  }
}

resource "aws_instance" "web" {
  ami = "ami-1234"
  security_groups = [
    "foo",
    "bar",
  ]

  network_interface {
    device_index = 0
    description  = "Main network interface"
  }

  depends_on = [
    aws_security_group.firewall,
  ]
  tags = {
    yor_trace = "9d2ce231-add3-4cb9-bf07-e6fb7c6041d3"
  }
}
