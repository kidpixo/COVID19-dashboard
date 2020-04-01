# * [Dockerize your Python Application | Runnable Docker Guides](https://runnable.com/docker/python/dockerize-your-python-application)
# * [Executing notebooks — nbconvert 6.0.0a1.dev0 documentation](https://nbconvert.readthedocs.io/en/latest/execute_api.html)
# * [Running a Container — docker-stacks latest documentation](https://jupyter-docker-stacks.readthedocs.io/en/latest/using/running.html)

FROM jupyter/scipy-notebook
# FROM python:3.8-slim-buster
RUN python -m pip install markdown uncertainties "bokeh>=2.0.0"
#  "holoviews[extras]" hvplot 
