module "child" {
  source = "./child"
}

resource "aws_instance" "a" {
  ami = "parent"

  depends_on = ["module.child"]
  tags = {
    yor_trace = "dbe154fa-a874-41ba-89a1-827b716e699e"
  }
}
