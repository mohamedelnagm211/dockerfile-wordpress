FROM ubuntu

MAINTAINER IT_WORX 

RUN  apt-get -y update && apt-get -y  upgrade 
RUN  apt-get install -y apache2
RUN  apt-get install -y  mariadb-server 
RUN  apt-get install -y php php-mysql
RUN  apt-get install -y libapache2-mod-php
  


#download and config wordpress   
RUN  apt-get install -y wget tar
RUN  cd /var/www/ && wget  http://wordpress.org/latest.tar.gz && tar -xvzf latest.tar.gz && cd wordpress && cp -R --copy-content . /var/www/html



#change the file name frome wp-config-sample.php to wp-config.php
RUN cd /var/www/html/  && mv wp-config-sample.php wp-config.php

RUN pwd
#edit the file wp-config.php  SED RUN simple LIKE --> sed 's/the word you want to change / replacement word /'  the source file
RUN cd /var/www/html/ && sed -i 's/database_name_here/test/' wp-config.php wp-config.php  && sed -i 's/username_here/wordpressuser4/' wp-config.php && sed -i 's/password_here/123/' wp-config.php

#apend(write in end of file) serverName localhost to delete the warning when start apache2
RUN echo "serverName localhost" >>  /etc/apache2/apache2.conf

#add index.php to dir.conf
RUN sed -i  's/DirectoryIndex /DirectoryIndex index.php /' /etc/apache2/mods-available/dir.conf  /etc/apache2/mods-available/dir.conf



#CREATE databse amd add user and grant to him all privileges
RUN  /etc/init.d/mysql start &&  mysql -e "CREATE DATABASE test;CREATE USER wordpressuser4@localhost IDENTIFIED BY  '123';GRANT ALL ON test.* TO wordpressuser4@localhost;FLUSH PRIVILEGES;"

RUN apt-get install -y curl man vim

CMD /etc/init.d/mysql start &&/etc/init.d/apache2 start && /bin/bash


 #Done by muhameda.radwan@gmai.com OR mohamedelnagm211@gmail.con

  
