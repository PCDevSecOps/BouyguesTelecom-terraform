resource "aws_instance" "web" {
  lifecycle {
    ignore_changes = ["*", "foo"]
  }
  tags = {
    yor_trace = "53a1e6b4-fa30-44b1-8146-d46c44864664"
  }
}
