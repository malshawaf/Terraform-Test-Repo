terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}


provider "github" {
  token = var.access_token
}

resource "github_repository" "first_repo" {
  name = "Terraform-Test-Repo"
  description = "Testing first Terrafrom repo with GitHub"
  visibility = "public"
}