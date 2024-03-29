# --------------------------------------------------------
#                     _       _       _
#                    (_)     | |     | |
#                     _ _ __ | |_ ___| |
#                    | | '_ \| __/ _ \ |
#                    | | | | | ||  __/ |
#                    |_|_| |_|\__\___|_|
# --------------------------------------------------------

# Provision GCP Xeon 4th Generation Scalable processors (code-named Sapphire Rapids) VM

module "linux_vm" {
  source              = "intel/gcp-vm/intel"
  project             = var.project
  boot_image_family   = "ubuntu-2204-lts"
  name                = "intel-spr-vm-1"
  machine_type        = "c3-highmem-22"
  access_config = [{
    nat_ip                 = null
    public_ptr_domain_name = null
    network_tier           = "PREMIUM"
  }, ]
  tags               = ["spr-fastchat-recipe-demo"]
}
