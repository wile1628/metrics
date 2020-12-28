# Script which prints basic information about your OS
Bash script that collects metrics about cpu and memory utilization.

## Table of contents
* [General info](#general-info)
* [Technologies](#technologies)
* [Setup](#setup)
* [Using](#using)
* [Sources](#sources)

## General info
It's a test project, which is designed to demonstrate ability to interact with Linux OS basic metric collection utilities. It includes script which can do following interactions:
* Ability to check cpu utilization.
* Ability to check mem utilization.
* Ability to do interactions above in containerized form

## Technologies
Project is created with:
* Bash
* Docker version: 20.10.1, build 831ebea
	
## Setup

#### Pre-requirements:
* Docker on your local machine or any other to which installation will be performed.

#### Procedure
1. Clone this repo to work machine
```
git clone https://github.com/wile1628/metrics
```
2. Build a container:
```
cd ./metrics; sudo docker build -t mem --build-arg arg=mem . 
#or 
sudo docker build -t cpu --build-arg arg=cpu .
``` 
3. Run a container:
```
sudo docker run mem
#or
sudo docker run cpu
```

## Using
To perform operation with either of metrics, you can:
1. Run a native script with mem parameter to see memory information
```
metrics/metrics.sh mem
```
2. Run a native script with cpu parameter to see cpu information
```
metrics/metrics.sh cpu
```
3. Launch the script as container (look at setup, step 3).
## Sources
* [Docker Documentation](https://docs.docker.com/)
* [Top command](https://man7.org/linux/man-pages/man1/top.1.html)
