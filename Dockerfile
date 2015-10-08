FROM seif/docker-mono-fastcgi-nginx
RUN apt-get update && apt-get install -y apt-utils
RUN apt-get install -y git arduino picocom python-setuptools python-dev build-essential && easy_install pip && pip install ino && apt-get clean
ADD sketchbuilder/src/WWW /var/www/
CMD ["/usr/sbin/runit_bootstrap"]
