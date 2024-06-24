module "vpc" {
    source  = "terraform-google-modules/network/google//modules/subnets"
    version = "~> 3.4.0"

    project_id   = "p-zc10n9hfct4iycyn5jwisk83i8nr"
    network_name = "testing-vpc-demo"

subnets = [
  {
    subnet_name   = "gaurav-subnet"
    subnet_ip     = "10.100.10.0/24"
    subnet_region = var.region
  }
]
}
