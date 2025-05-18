variable "resource_group_name" {
  description = "Name der Resource Group"
  type        = string
  default     = "rg-landingzone-sec"
}

variable "location" {
  description = "Azure Region"
  type        = string
  default     = "westeurope"
}

variable "ssh_public_key_path" {
  description = "Pfad zum SSH Public Key"
  type        = string
  default     = "C:/Users/josef/.ssh/terraform-key.pub"
}

