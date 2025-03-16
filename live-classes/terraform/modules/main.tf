module "demo" {
    source = "./my-first-module"
    instance_type = "t2.micro"
    Name          = "devops"
}

module "demo-2" {
    source = "./my-first-module"
    instance_type = "t2.micro"
    Name          = "devops-cloudtrain"
}