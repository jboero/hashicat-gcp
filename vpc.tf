module "network" {
  source  = "terraform-google-modules/network/google"
  version = "5.1.0"
  # insert required variables here
  
  network_name = "hashicatnet"
  project_id = "p-vgr6bafh7p6lnqbud123rtgoaou7"
  subnets = [
  {
    subnet_name   = "gaurav-subnet"
    subnet_ip     = "10.100.10.0/24"
    subnet_region = var.region
  }
]
}

module "cloud-run_example_simple_cloud_run" {
  source  = "GoogleCloudPlatform/cloud-run/google//examples/simple_cloud_run"
  version = "0.3.0"
  project_id =  "p-vgr6bafh7p6lnqbud123rtgoaou7"
}
