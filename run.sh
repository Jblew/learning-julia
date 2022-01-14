docker run -it \
    -w /project \
    -v `pwd`/project:/project \
    learning-julia /bin/bash -c "julia -e \"using Pkg; pkg\\\"activate .\\\"\" && julia \"${1}\""