FROM julia:1.7.1

ENV USER julia
ENV USER_HOME_DIR /home/${USER}
ENV JULIA_DEPOT_PATH ${USER_HOME_DIR}/.julia
ENV JULIA_NUM_THREADS 100
ENV NOTEBOOK_DIR ${USER_HOME_DIR}/src
RUN useradd -m -d ${USER_HOME_DIR} ${USER} 
RUN chown -R ${USER} ${USER_HOME_DIR}
USER ${USER}
RUN mkdir ${NOTEBOOK_DIR}
WORKDIR ${NOTEBOOK_DIR}

RUN echo "\
    using Pkg;\
    Pkg.add(\"Turing\");\
    Pkg.add(\"StatsPlots\");\
    " > ${USER_HOME_DIR}/install.jl
RUN julia ${USER_HOME_DIR}/install.jl

ADD src ${NOTEBOOK_DIR}
RUN ls ${NOTEBOOK_DIR}
RUN julia ${NOTEBOOK_DIR}/list-packages.jl