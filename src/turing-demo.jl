using Turing
using StatsPlots

print("Begin turing-demo")

# Define a simple Normal model with unknown mean and variance.
@model function gdemo(x, y)
  s² ~ InverseGamma(2, 3)
  m ~ Normal(0, sqrt(s²))
  x ~ Normal(m, sqrt(s²))
  y ~ Normal(m, sqrt(s²))
end

print("Model done, running sampler")

#  Run sampler, collect results
chn = sample(gdemo(1.5, 2), HMC(0.1, 5), 1000)

print("Sampler done, running describe")


# Summarise results
describe(chn)

print("Describe done, saving fig")


# Plot and save results
p = plot(chn)
savefig("gdemo-plot.png")