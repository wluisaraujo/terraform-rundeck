terraform {
  required_providers {
    rundeck = {
      source  = "rundeck/rundeck"
      version = "0.4.2"
    }
  }
}

provider "rundeck" {
  url         = "http://localhost:4440/"
  api_version = "38"
  auth_token  = ""
}
