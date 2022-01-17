FROM julia:1.7.1

ENV JULIA_DEPOT_PATH /.julia
WORKDIR /app

ADD make.jl /app/make.jl

RUN julia /app/make.jl

ADD . /app
CMD ["julia", "main.jl"]