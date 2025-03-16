data "aws_security_group" "selected" {
    name = "allow-all traffic"
}

output "sg" {
    value = data.aws_security_group.selected
}