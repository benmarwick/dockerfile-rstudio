# RStudio in Binder using a Dockerfile and Continuous Integration

[![Circle CI](https://circleci.com/gh/benmarwick/dockerfile-rstudio.svg?style=shield&circle-token=:circle-token)](https://circleci.com/gh/benmarwick/dockerfile-rstudio)  [![Binder](http://mybinder.org/badge.svg)](http://beta.mybinder.org/v2/gh/benmarwick/dockerfile-rstudio/master?urlpath=rstudio)

This is a proof-of-concept to deploy a Binder that exposes the RStudio UI instead of a Jupyter Notebook. It also installs several packages from the tidyverse.

## What have we got here?

- The Dockerfile gives instructions to Binder to make the notebook in your browser
- The Dockerfile gives instructions to [Circle-CI](ps://circleci.com/gh/benmarwick/dockerfile-rstudio) for continuous integration
- The Dockerfile will get a pre-built Docker container using `FROM rocker/binder:3.5.1`, this saves a lot of time waiting for Binder to make our notebook, because tidyverse packages are already installed in the container
- The Dockerfile can install  R packages from GitHub like this:

```
  RUN  R -e "devtools::install_github(c('thomasp85/patchwork', 'rstudio/gt'))"
```

- The The Dockerfile can install linux libraries like this:

```
RUN sudo apt-get install libudunits2-dev -y
```


