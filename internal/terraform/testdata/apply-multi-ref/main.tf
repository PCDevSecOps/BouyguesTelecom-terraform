resource "aws_instance" "create" {
  bar = "abc"
  tags = {
    yor_trace = "baba1339-0760-49cd-804a-58c2eb065a29"
  }
}

resource "aws_instance" "other" {
  var = "${aws_instance.create.id}"
  foo = "${aws_instance.create.bar}"
  tags = {
    yor_trace = "0e9c1983-6185-48d6-bcdb-d30873ff8db8"
  }
}
