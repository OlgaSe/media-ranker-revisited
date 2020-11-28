Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV["GITHUB_CLIENT_ID"], ENV["GITHUB_CLIENT_SECRET"], scope: "user:email"
end
#tells omniauth where github should look for secrets  (in env)
# not working without route (get "/auth/github", as: "github_login")
