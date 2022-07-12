module "network_example_basic_auto_mode" {
  source  = "terraform-google-modules/network/google//examples/basic_auto_mode"
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
