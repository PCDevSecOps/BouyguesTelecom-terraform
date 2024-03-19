variable "num" {
  default = 3
}

resource "aws_instance" "a" {
  count = var.num
  tags = {
    yor_trace = "91b9dd5b-1d98-426b-9e12-2003d10f2032"
  }
}

resource "aws_instance" "b" {
  provisioner "local-exec" {
    # Since we're in a provisioner block here, this expression is
    # resolved during the apply walk and so the resource count must
    # be known during that walk, even though apply walk doesn't
    # do DynamicExpand.
    command = "echo ${length(aws_instance.a)}"
  }
  tags = {
    yor_trace = "82b66224-377f-45c2-a5de-5d5965fd319f"
  }
}
