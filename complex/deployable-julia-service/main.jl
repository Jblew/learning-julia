__precompile__()

using Genie
route("/") do
    "Welcome to Genie, see <a href=\"/html\">HTML</a> or <a href=\"/json\">JSON</a>"
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
up(8080, "0.0.0.0", async = false)