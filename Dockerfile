FROM julia:1.7.1
WORKDIR /project
ADD project/*.toml /project
RUN ls /project
RUN julia -e "using Pkg; Pkg.activate(\".\"); Pkg.instantiate(); Pkg.precompile()"
