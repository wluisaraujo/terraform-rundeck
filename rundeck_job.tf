resource "rundeck_job" "bounceweb" {
  name              = "Bounce All Web Servers"
  project_name      = "${rundeck_project.terraform.name}"
  node_filter_query = "tags: web"
  description       = "Restart the service daemons on all the web servers"

  command {
    shell_command = "sudo service anvils restart"
  }
}
