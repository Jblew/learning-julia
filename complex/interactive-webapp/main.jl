__precompile__()

using Genie.Renderer.Html, Stipple, StippleUI

@reactive mutable struct Model <: ReactiveModel
    process::R{Bool} = false
    output::R{String} = ""
    input::R{String} = ""
end

function handlers(model)
    on(model.process) do _
        if (model.process[])
            model.output[] = model.input[] |> reverse
            model.process[] = false
        end
    end

    model
end

function ui(model)
    page(
        model,
        class = "container",
        [
            p([
                "Input "
                input("", @bind(:input), @on("keyup.enter", "process = true"))
            ]) p([
                button("Action!", @click("process = true"))
            ]) p([
                "Output: "
                span("", @text(:output))
            ])
        ]
    )
end

route("/") do
    model = Model |> init |> handlers
    html(ui(model), context = @__MODULE__)
end

isrunning(:webserver) || up(8080, "0.0.0.0", async = false)