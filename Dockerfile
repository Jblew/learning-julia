FROM julia:1.7.1
WORKDIR /project
ADD project/*.toml /project
RUN ls /project
RUN julia -e "using Pkg; pkg\"activate .\"; pkg\"instantiate\"; pkg\"precompile\""
