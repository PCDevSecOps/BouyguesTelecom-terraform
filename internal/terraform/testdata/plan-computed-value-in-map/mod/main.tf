variable "services" {
  type = list(map(string))
}

resource "aws_instance" "inner2" {
  looked_up = var.services[0]["elb"]
  tags = {
    yor_trace = "8010bbac-ff4b-4452-8e03-50929cffdd25"
  }
}

