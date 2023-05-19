env = "DEV"

subscription = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxx"

resource-group = "DEV-GPT"

deployments = {
    "dev-gpt-EU-a" = {
      location = "westeurope"
      models  = ["gpt-35-turbo", "code-davinci-002"]
    },

    "dev-gpt-US-a" = {
      location = "eastus"
      models  = ["gpt-35-turbo", "gpt-4"]
    }
  }

allowed-subnets = [
  "189.31.106.126",
]

