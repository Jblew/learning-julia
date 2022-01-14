docker run -it \
    -w /app \
    -v `pwd`:/app \
    learning-julia /bin/bash -c "julia \"${1}\""