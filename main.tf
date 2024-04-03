terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

resource "github_membership" "user" {
  username = var.username
  role     = var.role
}
