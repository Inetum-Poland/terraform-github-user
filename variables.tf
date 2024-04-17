variable "username" {
  type        = string
  description = "The username of the user"
  nullable    = false
}

variable "role" {
  type        = string
  description = "The role of the user"
  default     = "member"

  validation {
    condition     = contains(["member", "admin"], var.role)
    error_message = "Must be one of 'member' or 'admin'"
  }
}

variable "teams" {
  type = list(object({
    team = any
    role = string
  }))
  description = "The teams to add the user to"
  default     = []

  validation {
    condition = alltrue([
      for v in var.teams : contains(["member", "maintainer"], v.role)
    ])
    error_message = "value"
  }
}

variable "seat_project_code" {
  type        = string
  description = "The seat project code"
}
