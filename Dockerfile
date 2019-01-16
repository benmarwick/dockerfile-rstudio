FROM rocker/binder:3.5.0

# Copy repo into ${HOME}, make user own $HOME
USER root
COPY . ${HOME}
RUN chown -R ${NB_USER} ${HOME}
USER ${NB_USER}

RUN  R -e "devtools::install_github( 'thomasp85/patchwork' ))"
