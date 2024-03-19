variable "otherresourcename" {
  default = "aws_instance.web1"
}

variable "vairable_with_interpolation" {
  default = "${var.otherresourcename}"
}

resource "aws_instance" "web" {
  depends_on = ["${var.otherresourcename}}"]
  tags = {
    yor_trace = "aab8207d-746b-43d0-a045-6bc0f1699f05"
  }
}
