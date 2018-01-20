FROM centos

RUN yum update -y

RUN yum install -y epel-release && yum install -y python-pip

RUN pip install flask flask-mysql

#COPY . /opt/source/code

#ENTRYPOINT FLASK_APP=/opt/source-code/app.py flask run
