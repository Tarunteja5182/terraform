data "aws_security_group" "sam" {
  filter {
    name   = "group-name"
    values = ["data_sg"]
  }

  filter {
    name   = "vpc-id"
    values = ["vpc-02a5f3c943f5cb635"]
  }
}