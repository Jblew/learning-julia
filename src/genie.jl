using Genie
route("/hello") do
    "Welcome to Genie!"
end

# Powerful high-performance HTML view templates
using Genie.Renderer.Html
route("/html") do
    h1("Welcome to Genie!") |> html
end

# JSON rendering built in
using Genie.Renderer.Json
route("/json") do
    (:greeting => "Welcome to Genie!") |> json
end

# Start the app!
up(8889, async = false)