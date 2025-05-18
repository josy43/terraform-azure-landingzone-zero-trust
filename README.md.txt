# Terraform Azure Landing Zone (Zero Trust)

Dieses Projekt erstellt mit Terraform eine sichere Azure-Landing-Zone nach dem Zero-Trust-Prinzip. Es dient als Basis für produktionsreife Cloud-Architekturen mit Netzwerkisolation, Zugriffskontrolle und Infrastructure as Code.

## Features

- Azure Resource Group
- Virtual Network mit 2 Subnetzen:
  - `subnet-web`: öffentlich erreichbar (HTTP, SSH)
  - `subnet-internal`: nur intern erreichbar
- Network Security Groups (NSGs):
  - Zugriff fein granular geregelt
- Zwei virtuelle Linux-VMs:
  - `vm-web`: mit Public IP
  - `vm-internal`: nur intern erreichbar
- SSH-Key-Authentifizierung (kein Passwort)
- Outputs (z.B. öffentliche IP, interne IPs)

## Architekturübersicht

   --> [Resource Group: rg-landingzone-sec]
      --> [Virtual Network: vnet-hub]
         --> [Subnet: subnet-web]
            -   [NSG: nsg-web]
            --> [NIC: nic-web]
               --> [VM: vm-web]
                  - [SSH-Key Zugriff]
                  - [Public IP: pip-web]
         --> [Subnet: subnet-internal]
            -   [NSG: nsg-internal]
            --> [NIC: nic-internal]
               --> [VM: vm-internal]
                  - [Nur interne IP]
				  

## Sicherheit

- Zero Trust Architektur: Nur definierte Zugriffe erlaubt
- NSGs sichern jedes Subnetz separat ab
- Kein direkter Zugriff auf interne VM
- Nur Zugriff per SSH-Key (kein Passwortlogin)

## Terraform-Commands

```bash
terraform init
terraform plan
terraform apply
terraform destroy
