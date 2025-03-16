module "demo" {
    source = "./my-first-module"
    instance_type = "t2.micro"
    Name          = "devops"
}