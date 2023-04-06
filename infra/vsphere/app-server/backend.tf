terraform {
  backend "local" {}
}

# terraform {
#   backend = "artifactory"
#   config = {
#     username = "devops-sa"
#     password = "AmyFarrahFowler"
#     url      = "https://custom.artifactoryonline.com/artifactory"
#     repo     = "foo"
#     subpath  = "terraform-bar"
#   }
# }
