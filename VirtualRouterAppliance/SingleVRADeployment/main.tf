resource "ibm_network_gateway" "gateway" {
  name = "tf-gateway"

  members {
    hostname               = "tf-gateway-rt"
    domain                 = var.domainname
    datacenter             = var.dc
    network_speed          = 10000
    private_network_only   = false
    tcp_monitoring         = true
    process_key_name       = "INTEL_INTEL_XEON_E52620_V4_2_10"
    os_key_name            = "OS_DEBIAN_8_X_JESSIE_MINIMAL_64_BIT_2"
    package_key_name       = "2U_NETWORK_GATEWAY_APPLIANCE_1O_GBPS"
    redundant_network      = false
    disk_key_names         = ["HARD_DRIVE_2_00TB_SATA_II"]
    redundant_power_supply = true
    public_bandwidth       = 20000
    memory                 = 32
    tags                   = ["ryantiffany"]
    notes                  = "gateway notes 1"
    ipv6_enabled           = true
  }
}

