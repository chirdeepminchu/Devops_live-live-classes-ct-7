module "demo" {
    source = "./my-first-module"
    instance_type = "t2.micro"
    Name          = "devops"
    terraform     = "true"
}

module "demo-2" {
    source = "./my-first-module"
    instance_type = "t2.micro"
    Name          = "devops-cloudtrain"
    terraform     = "true"
}