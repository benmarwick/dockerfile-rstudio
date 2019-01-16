FROM rocker/binder:3.5.0

# Copy repo into ${HOME}, make user own $HOME
USER root
COPY . ${HOME}
RUN chown -R ${NB_USER} ${HOME}
USER ${NB_USER}

# Install linux depedendencies here
# e.g. need this for ggforce::geom_sina

RUN sudo apt-get update \
  && sudo apt-get install libudunits2-dev -y \
  
## run some R code to get GitHub pkgs
  && R -e "devtools::install_github(c('thomasp85/patchwork', 'rstudio/gt'))"
