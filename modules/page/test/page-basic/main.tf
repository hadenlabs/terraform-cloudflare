locals {
  owner = "acostabox"
  name  = "page-test"
}

module "github_repository_page" {
  source             = "hadenlabs/repository/github"
  version            = ">=1.0.0"
  name               = local.name
  description        = "test page."
  add_labels_default = false
  default_branch     = "main"
  #checkov:skip=CKV_GIT_1:The resource github is module
  visibility = "private"
  topics = [
    "acostabox",
    "cloudflare",
    "page",
  ]
}

module "main" {
  depends_on = [module.github_repository_page]
  source     = "../.."
  zone       = var.zone
  name       = var.name
  account_id = var.account_id

  config = {
    owner                         = local.owner
    repo_name                     = local.name
    pr_comments_enabled           = null
    deployments_enabled           = null
    production_deployment_enabled = null
    preview_deployment_setting    = null
    preview_branch_includes       = null
    preview_branch_excludes       = null
  }

}
