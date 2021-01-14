terraform {
  required_version = ">= 0.12.0"

  required_providers {
    ibm = {
      source           = "IBM-Cloud/ibm"
      required_version = ">= 1.13"
    }
  }
}
