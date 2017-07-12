#download zeppline tar files
wget http://apache.claz.org/zeppelin/zeppelin-0.7.2/zeppelin-0.7.2-bin-all.tgz
#extract tar files
tar -xvzf zeppelin-0.7.2-bin-all.tgz -C /opt
#move tar file to /opt for consistancy
sudo tar -xvzf zeppelin-0.7.2-bin-all.tgz -C /opt
#Update zeppline conf with spark home
#Start zeppline service
sudo ./bin/zeppelin-daemon.sh start
