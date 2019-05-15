workflow "Publish on Netlify" {
  resolves = ["Publish"]
  on = "push"
}

action "Publish" {
  uses = "netlify/actions/build@master"
  secrets = ["GITHUB_TOKEN", "NETLIFY_SITE_ID"]
}
