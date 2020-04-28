

if [ "$x" == "app1" ]
then
	cp -rf /mycode/app1/* /var/www/html/
	httpd -DFOREGROUND

elif [ "$x" == "app2" ] 
then
	cp -rf /mycode/app2/* /var/www/html
	httpd -DFOREGROUND

elif [ "$x" == "app3" ] 
then
	cp -rf /mycode/app3/* /var/www/html
	httpd -DFOREGROUND
else
	echo" No App to Launch"  >/var/www/html/index.html
fi	
