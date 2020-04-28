from centos
run yum install httpd -y
env x=app1
run mkdir /mycode
copy app1 /mycode/app1
copy app2 /mycode/app2
copy app3 /mycode/app3
copy doc.sh /mycode/doc.sh
RUN ["chmod", "+x", "/mycode/doc.sh"]
expose 3000
ENTRYPOINT [ "/mycode/doc.sh" ]
