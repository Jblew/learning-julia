docker run -it \
    -w /home/julia \
    -v `pwd`/src:/home/julia/notebook \
    learning-julia /bin/bash -c "julia \"${1}\" \"${2}\""