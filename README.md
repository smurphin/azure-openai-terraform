# Azure OpenAI Deployment Automation with Terraform

* A full overview of this code and how it works can be found on my blog [here](https://smurphin.github.io/terraform/azure/ai/openai/infraascode/iac/2023/05/17/Azure-Open-AI-with-Terraform.html)

This repository contains Terraform code that automates the deployment of multiple Azure OpenAI instances with multiple models. It simplifies the process of creating and configuring cognitive accounts and deploying models, saving time and reducing errors.

## Introduction

Azure OpenAI is a cloud-based service provided by Microsoft Azure, offering a wide range of artificial intelligence capabilities. This project focuses on automating the deployment of Azure OpenAI instances and models using Terraform.

## Features

- Automated creation of Azure OpenAI cognitive accounts
- Deployment of multiple models to each cognitive account
- Modularity and organization of Terraform code
- Environment-specific configurations using `.tfvars` files

## Prerequisites

Before you can use this code, make sure you have the following:

- Azure subscription
- Terraform installed on your local machine
- Azure CLI installed and configured

## Getting Started

To get started with the deployment automation:

1. Clone this repository to your local machine.
2. Configure your Azure credentials using the Azure CLI.
3. Update the variables in `variables.tf` to match your requirements.
4. Create an environment-specific `.tfvars` file (e.g., `dev.tfvars`) and provide the necessary values for the variables.
5. Run `terraform init` to initialize the Terraform configuration.
6. Run `terraform plan` to preview the changes that will be applied.
7. Run `terraform apply` to apply the changes and create the Azure OpenAI instances and models.

## File Structure

The repository follows the following file structure:


- main.tf
- locals.tf
- variables.tf
- environments
    * development
        + dev.tfvars
- README.md
- .gitignore


- `main.tf`: Contains the main Terraform configuration, including resource definitions and the nested loop structure.
- `locals.tf`: Defines the locals used in the Terraform code, including the nested loop for cognitive deployments.
- `variables.tf`: Defines the input variables used in the Terraform code, such as the deployments data structure.
- `dev.tfvars`: Environment-specific file containing values for variables in `variables.tf`. Customize it for different environments.
- `README.md`: The document you're currently reading.
- `.gitignore`: Specifies files and directories to be ignored by Git.



