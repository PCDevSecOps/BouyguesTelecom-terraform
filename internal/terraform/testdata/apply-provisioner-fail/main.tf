resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "59610200-3c40-462f-b7b6-2eba73a736f1"
  }
}

resource "aws_instance" "bar" {
  provisioner "shell" {}
  tags = {
    yor_trace = "32b5ceb1-3592-4a91-8ecb-8fb0d1859f35"
  }
}
