resource "gitlab_project" "example" {
    name = "example"
    description = "My awesome codebase"
    visibility_level = "public"
    wiki_enabled = false 
    packages_enabled = false 
    auto_devops_enabled = false 
}

resource "gitlab_project_hook" "ansible-renovatehook" {
    project = gitlab_project.ansible.id
    url = var.RENOVATE_WEBHOOK_URL
    token = var.RENOVATE_WEBHOOK_SECRET 
    push_events = false
}