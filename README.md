# dockerfile-wordpress
##INFO 
this Dockerfile run ubuntu image 
##DOWNLOAD
just download **Dockerfile** 

##BUILD 
BUILD it by this command
```
docker build -t ubuntu_test .
```
##RUN
RUN Dockerfile by this command
```
docker run -it -p 8080:80 -p 3888:3306 ubuntu_test /bin/bash
```
#just one step

###start apache2 and mysql 
````
/etc/init.d/mysql start
/etc/init.d/apache2 start
```
###go to your browser and write on url 
127.0.0.1:8080 
#DONE
now you have wordpress on your machine :)
