docker run -it \
    -w /project \
    -v `pwd`/project:/project \
    learning-julia /bin/bash -c "julia -e \"using Pkg; Pkg.activate(\\\".\\\")\" && julia \"${1}\" \"${2}\""