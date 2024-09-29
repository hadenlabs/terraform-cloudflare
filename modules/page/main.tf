locals {
  production_branch = "main"
  defaults = {
    production_branch = local.production_branch
    config = {
      production_branch             = local.production_branch
      pr_comments_enabled           = true
      deployments_enabled           = true
      production_deployment_enabled = true
      preview_deployment_setting    = "custom"
      preview_branch_includes       = ["develop", "preview", "testing"]
      preview_branch_excludes       = ["main", "prod", "master"]
    }
    build = {
      build_command   = "yarn build"
      destination_dir = "build"
      root_dir        = ""
    }

  }

  input = {
    zone       = var.zone
    account_id = var.account_id

    project_name = var.name
    config       = var.config
    build        = var.build

    # module
    module_enabled = var.module_enabled
  }

  generated = {
    zone         = local.input.zone
    project_name = local.input.project_name
    account_id   = local.input.account_id
    branch       = local.defaults.production_branch

    config = merge(local.defaults.config, local.input.config)
    build  = merge(local.defaults.build, local.input.build)

    # module
    module_enabled = local.input.module_enabled
  }

  outputs = {
    zone         = local.generated.zone
    project_name = local.generated.project_name
    account_id   = local.generated.account_id

    branch = local.generated.branch
    config = local.generated.config
    build  = local.generated.build

    # module
    module_enabled = local.generated.module_enabled
  }

}

resource "cloudflare_pages_project" "this" {
  count             = local.outputs.module_enabled ? 1 : 0
  account_id        = local.outputs.account_id
  name              = local.outputs.project_name
  production_branch = local.outputs.branch

  source {
    type = "github"
    config {
      owner                         = local.outputs.config.owner
      repo_name                     = local.outputs.config.repo_name
      production_branch             = local.outputs.branch
      pr_comments_enabled           = local.outputs.config.pr_comments_enabled
      deployments_enabled           = local.outputs.config.deployments_enabled
      production_deployment_enabled = local.outputs.config.production_deployment_enabled
      preview_deployment_setting    = local.outputs.config.preview_deployment_setting
      preview_branch_includes       = local.outputs.config.preview_branch_includes
      preview_branch_excludes       = local.outputs.config.preview_branch_excludes
    }
  }

  build_config {
    build_command   = local.outputs.build.build_command
    destination_dir = local.outputs.build.destination_dir
    root_dir        = local.outputs.build.root_dir
  }

}

resource "cloudflare_pages_domain" "this" {
  depends_on   = [cloudflare_pages_project.this]
  count        = local.outputs.module_enabled ? 1 : 0
  account_id   = local.outputs.account_id
  project_name = local.outputs.project_name
  domain       = local.outputs.zone
}
