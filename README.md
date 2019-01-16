# RStudio in Binder using a Dockerfile

[![Binder](http://mybinder.org/badge.svg)](http://mybinder.org/v2/gh/benmarwick/dockerfile-rstudio/master)

This is a proof-of-concept to deploy a Binder that exposes the
RStudio UI instead of a Jupyter Notebook. It also installs
several packages from the tidyverse, and includes a demo
script to show off functionality.

The advantage of using a Dockerfile here is that we pull a rocker image, rather than building one. So it's very fast to get the Binder up and running.

Plus we can use the Dockerfile to install linux libraries and R packages from GitHub.

To start your RStudio session, click on "new" in the top right,
and at the bottom will be `RStudio Session`.
Click that and your RStudio session will begin momentarily!

See `instructions.ipynb` for more details.

*Special thanks to Ryan Lovett (@ryanlovett) for figuring out
RStudio support with JupyterHub*
