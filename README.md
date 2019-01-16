# RStudio in Binder using a Dockerfile and Continuous Integration

[![Circle CI](https://circleci.com/gh/benmarwick/dockerfile-rstudio.svg?style=shield&circle-token=:circle-token)](https://circleci.com/gh/benmarwick/dockerfile-rstudio) 

[![Binder](http://mybinder.org/badge.svg)](http://beta.mybinder.org/v2/gh/benmarwick/dockerfile-rstudio/master?urlpath=rstudio)

This is a proof-of-concept to deploy a Binder that exposes the RStudio UI instead of a Jupyter Notebook. It also installs several packages from the tidyverse.

The advantage of using a Dockerfile here is that we pull a rocker image, rather than building one. So it's very fast to get the Binder up and running.

Plus we can use the Dockerfile to install  R packages from GitHub like this:

```
  RUN  R -e "devtools::install_github(c('thomasp85/patchwork', 'rstudio/gt'))"
```

We are also using [Circle-CI](ps://circleci.com/gh/benmarwick/dockerfile-rstudio) for continuous integration. Circle-CI uses the same Dockerfile as Binder, and it just works. 

