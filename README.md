# What is this?
Author: Jonathan Sprinkle, Vanderbilt University

Based on the CurriculurAnalytics package, developed here: https://github.com/CurricularAnalytics/CA-Notebooks?tab=readme-ov-file I created this docker image to reduce the startup time to visualize curricula.

## clone this repository
Use git to clone this repository, or else download it and extract.

```
git clone https://github.com/jmscslgroup/ca-docker
cd ca-docker
```

## how to download the docker image
Make sure Docker is running. Then use Docker from the command line to download the image:

```
docker pull sprinkjm/curricular-analytics:latest
```

This may take some time. 

## how to run the docker image on your machine
Once you have downloaded the image from dockerhub (or followed the optional instructions below to build it yourself):
```
docker run --rm -it -p 8889:8889 -v .:/home/jovyan/work sprinkjm/curricular-analytics
```

Once you run this, it will give you a URL to load in your browser. Several URLs will be given, you should probably pick the one that is 127.0.0.1 as the base URL. 

After your browser loads the jupyter notebook, navigate to and load load vu-cs.ipynb and voila.

## how to build this docker image from the Dockerfile
(make sure Docker is already running or you will get strange errors)
```
docker build -t curricular-analytics .
```

If you build your own version, you will not use the sprinkjm/ scope for running it but rather: 

```
docker run --rm -it -p 8889:8889 -v .:/home/jovyan/work curricular-analytics
```
