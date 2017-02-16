# dockerfile-wordpress
##INFO 
this Dockerfile run ubuntu image <br>
After Run this Image you will have **VIM** , **CURL** , **man** , **apache** , **mysql** ,**php** and **wordpress**
##DOWNLOAD
just download [**Dockerfile**](https://github.com/mohamedelnagm211/dockerfile-wordpress/blob/master/Dockerfile)

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
###go to your browser and write on url 
127.0.0.1:8080 
#DONE
now you have wordpress on your machine :)
#Licensing
Anybody is free to use file, but you have to give the credits to the authors 
#VERSION
v 0.2
