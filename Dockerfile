FROM rocker/binder:3.5.0

# Copy repo into ${HOME}, make user own $HOME
USER root
COPY . ${HOME}
RUN chown -R ${NB_USER} ${HOME}
USER ${NB_USER}

## run some R code to get GitHub pkgs
RUN R -e "devtools::install_github(c('thomasp85/patchwork', 'rstudio/gt'))"
