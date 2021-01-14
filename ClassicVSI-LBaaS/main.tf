module instance {
  source     = "./instance"
  datacenter = var.datacenter
  ssh_key    = var.ssh_key
  instance_count = var.instance_count
}

module lbaas {
  source       = "./lbaas"
  subnet_id    = module.instance.subnet_id
  instance_ips = module.instance.ips
}


