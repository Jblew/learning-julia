FROM julia:1.7.1

ENV JULIA_DEPOT_PATH /.julia
WORKDIR /app

RUN echo "\
    using Pkg;\
    Pkg.add(\"Genie\");\
    Pkg.precompile();\
    " > /install.jl
RUN julia /install.jl

ADD . /app
CMD ["julia", "main.jl"]