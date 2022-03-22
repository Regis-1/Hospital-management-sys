# Hospital-management-sys
Hospital management system - system that is designed for support the organization and management of hospital facility by automating crucial tasks, providing communication between staff and patients and also by analyzing collected data.

This is a repository of project for university course of **IT applications - Electronic Media in Business and Commerce**

## Development walkthrough:
### Backend:
#### Requirements
- **docker** with **docker-compose**
- **git**
- **internet connection** for downloading the docker images

#### Starting backend
To start the backend side of the HMS you simply have to run command ```docker-compose up --build``` (on linux it can be needed to use ```sudo``` before) or ```docker-compose up --build -d``` for detached mode. The docker-compose will try to build two main modules of the application: **app** (spring boot application from _hms_ directory) & **mysqldb** (mySQL database server from _hms\_db_ directory). After some time of building and deploying the application should be running.

#### Ports
- **Spring boot server** - 6868 (e.g. ```localhost:6868/home```)
- **mySQL server** - 3307

#### Stopping backend
To stop running backend you can use **SIGKILL** signal (```CTRL-C```) in interactive mode or ```docker-compose down``` in detached mode or in another terminal window in interactive mode.

#### Restarting backed
To restart application and apply made changes you need to stop the app, remove existing containers via ```docker rm ID_OR_NAME_OF_CONTAINER``` and run ```docker-compose up --build``` again. If docker-compose will find some changes, it will rebuild that module. To see all existing docker containers you can use command ```docker ps -a``` or ```docker ps``` to see only running ones.