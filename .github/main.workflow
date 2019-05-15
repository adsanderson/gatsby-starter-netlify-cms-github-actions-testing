workflow "Publish on Netlify" {
  resolves = ["Publish"]
  on = "pull_request"
}

action "Publish" {
  uses = "netlify/actions/build@master"
  secrets = ["GITHUB_TOKEN", "NETLIFY_SITE_ID"]
}
