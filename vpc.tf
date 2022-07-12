module "network" {
  source  = "terraform-google-modules/network/google"
  version = "5.1.0"
  # insert required variables here
  
  subnets = [
  {
    subnet_name   = "gaurav-subnet"
    subnet_ip     = "10.100.10.0/24"
    subnet_region = var.region
  }
]
}
