# %%[markdown]
# Kredyt na mieszkanie

##
f(x) = x^2

##
using Plots
x = 1:10;
y = map(x) do x f(x) end; # These are the plotting data
plot(x, y, label = "my label")

##
# %%
plot(x, y, label = "my label")