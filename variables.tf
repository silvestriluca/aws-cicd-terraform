####### VARIABLES #######
variable "app_name_prefix" {
  type        = string
  description = "Name of the app/service to which the infrastructure refers to. Prefix (short) version."
}
variable "app_name_verbose" {
  type        = string
  description = "Name of the app/service to which the infrastructure refers to. Verbose version."
}

variable "repo_branches" {
  type        = list(string)
  description = "List of branches that require CI/CD infrastructure."
}

variable "repo_id" {
  type        = string
  description = "Repository ID (organization/repo-name)."
}

variable "needs_iac_flow" {
  type        = bool
  description = "True if the repository has IaC elements. Defaults to True."
  default     = true
}

variable "needs_app_flow" {
  type        = bool
  description = "True if the repository has app elements (source code). Defaults to True."
  default     = true
}

variable "manual_approval" {
  type        = bool
  description = "True if a manual approval is needed before publish phase. Defaults to True"
  default     = true
}

variable "app_builds_list" {
  type        = list(string)
  description = "A list of app builds needed (e.g. ['app_ios', 'app_android', 'app_backend'])"
  default     = ["service-1"]
}
