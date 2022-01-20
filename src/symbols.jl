function byFeature(features::Vector{Symbol})
    if :red in features
        print("Red")
    end
    if :green in features
        print("Green")
    end
end

function testCase(input::Vector{Symbol})
    print("\n---\n $input :\n")
    byFeature(input)
    print("\n")
end


testCase([:red]::Vector{Symbol})
testCase([:green]::Vector{Symbol})
testCase([:red, :green]::Vector{Symbol})