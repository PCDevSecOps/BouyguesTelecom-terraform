data "aws_data_source" "foo" {

}

resource "aws_instance" "bar" {
  attr = "${length(data.aws_data_source.foo.computed)}"
  tags = {
    yor_trace = "9455c71c-3baa-4b7b-8355-21daef86b052"
  }
}
