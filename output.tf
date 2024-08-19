output "out" {
  value = {
    user              = github_membership.user
    seat_project_code = terraform_data.seat_project_code
  }
  description = "User object `github_membership`."
}
