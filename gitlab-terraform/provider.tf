terraform {
    required_providers {
        gitlab = {
            source = "gitlabhq/gitlab"
            version = "~> 19.5.0"
        }
    }
}

variable "GITLAB_TOKEN" {
    type = string 
    sensitive = true
}


provider "gitlab" {
    base_url = "https://my.gitlab.server/api/v4/"
    token =  ""
}



