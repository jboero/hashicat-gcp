module "vpc" {
    source  = "app.terraform.io/JohnBoero/network/google"
    version = "~> 2.3"

    project_id   = var.project_id
    network_name = "example-vpc"
    routing_mode = "GLOBAL"

    subnets = [
        {
            subnet_name           = "subnet-01"
            subnet_ip             = "10.10.10.0/24"
            subnet_region         = "us-west1"
        }]
}
