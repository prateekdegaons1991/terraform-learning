# terraform-learning
exercises and practice terraform

# Terraform Learning and Practice

This repository contains code and resources for learning and practicing Terraform.

### Terraform best practice for folders structure 

    my_terraform_project/
    ├── README.md
    ├── main.tf
    ├── variables.tf
    ├── outputs.tf
    ├── modules/
    │   ├── networking/
    │   │   ├── main.tf
    │   │   ├── variables.tf
    │   │   ├── outputs.tf
    │   │   └── main.tf
    │   ├── compute/
    │   │   ├── main.tf
    │   │   ├── variables.tf
    │   │   ├── outputs.tf
    │   │   └── main.tf
    │   └── storage/
    │       ├── main.tf
    │       ├── variables.tf
    │       ├── outputs.tf
    │       └── main.tf
    ├── providers/
    │   ├── aws/
    │   │   ├── main.tf
    │   │   ├── variables.tf
    │   │   └── main.tf
    │   └── azure/
    │       ├── main.tf
    │       ├── variables.tf
    │       └── main.tf
    └── .gitignore

## explain what are terraform taints

    tf apply -replace ="resource_name"

the above command will replace the resource_name in the terraform code with desired state


