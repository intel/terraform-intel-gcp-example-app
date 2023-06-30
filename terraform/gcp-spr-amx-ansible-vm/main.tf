# Cloud Init file: terraform-intel-gcp-example-app/terraform/gcp-spr-amx-ansible-vm/cloud_init.yml
data "template_file" "user_data" {
  template = file("./cloud_init.yml")
}

module "linux_vm" {
  source              = "github.com/intel/terraform-intel-gcp-vm?ref=amx"
  project             = var.project
  boot_image_project  = "ubuntu-os-cloud"
  boot_image_family   = "ubuntu-2204-lts"
  boot_disk_type      = "pd-extreme"
  boot_disk_size      = 200
  name                = "lmelo-spr-amx-ansible-vm"
  zone                = "us-central1-a"
  user_data    = data.template_file.user_data.rendered
  access_config = [{
    nat_ip                 = null
    public_ptr_domain_name = null
    network_tier           = "PREMIUM"
  }, ]
}
