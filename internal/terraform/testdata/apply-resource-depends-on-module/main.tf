module "child" {
  source = "./child"
}

resource "aws_instance" "a" {
  ami = "parent"

  depends_on = ["module.child"]
  tags = {
    yor_trace = "850e16c4-f70a-4c40-873b-dee400d61203"
  }
}
