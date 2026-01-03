# Terraform — Azure VNet Peering With Virtual Machines

This Terraform project deploys the following Azure resources:

- 1 Resource Group

- 2 Virtual Networks

- 2 Subnets

- Bidirectional VNet Peering

- 2 Ubuntu Linux Virtual Machines (one in each VNet)

- Bidirectional VNet Peering
- 2 Ubuntu Linux Virtual Machines (one in each VNet)
  
The setup demonstrates network connectivity between VMs across peered VNets.


```HCL 

Resource Group: day15-rg (Canada East)

VNet 1: peer1-vnet (10.0.0.0/16)
 └── Subnet: peer1-sn (10.0.0.0/24)
 └── VM1: peer1-vm

VNet 2: peer2-vnet (10.1.0.0/16)
 └── Subnet: peer2-sn (10.1.0.0/24)
 └── VM2: peer2-vm

Peering:
 peer1to2  → VNet1 → VNet2
 peer2to1  → VNet2 → VNet1


