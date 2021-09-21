locals {
  repo_branches_normalized = [for branch in var.repo_branches : replace(branch, "/", "_")]
}
