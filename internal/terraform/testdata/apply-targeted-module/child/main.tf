resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "f19cb133-02b7-49ff-95cc-12bfad2ee3d0"
  }
}

resource "aws_instance" "bar" {
  num = "2"
  tags = {
    yor_trace = "5bbc6a5d-84be-4db4-80fe-c49a6be65960"
  }
}
