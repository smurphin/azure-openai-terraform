variable "env" {}

variable "subscription" {}

variable "resource-group" {}

variable "deployments" {
  type = map(object({
    location = string
    models  = list(string)
  }))
}

variable "allowed-subnets" {
  default = []
  type = list(string)
}

variable "model_versions" {
  type = map(string)
  default = {
    "gpt-35-turbo"    = "0301"
    "code-davinci-002" = "1"
    "gpt-4"           = "0314"
    # Add more model versions as needed
  }
}