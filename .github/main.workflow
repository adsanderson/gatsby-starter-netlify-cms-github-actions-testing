workflow "Publish on Netlify" {
  on = "push"
  resolves = ["curl"]
}

action "Publish" {
  uses = "netlify/actions/build@master"
  secrets = ["GITHUB_TOKEN", "NETLIFY_SITE_ID"]
}

action "curl" {
  uses = "curl"
  needs = ["Publish"]
  args = "https://nifty-benz-00a2b8.netlify.com/"
}
