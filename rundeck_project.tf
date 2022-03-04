resource "rundeck_project" "terraform" {
  name        = "terraform"
  description = "Sample Application Created by Terraform Plan"
  ssh_key_storage_path = "${rundeck_private_key.terraform.path}"
  resource_model_source {
    type = "file"
    config = {
      format = "resourcexml"
      # This path is interpreted on the Rundeck server.
      file = "/home/rundeck/resources.xml"
      writable = "true"
      generateFileAutomatically = "true"
    }
  }
  extra_config = {
    "project.label" = "Terraform Example"
  }
}
