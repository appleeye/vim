#!/bin/sh
echo "login AWS server: please choose which one to login"
echo "1: dev tomcat server"
echo "2: uat tomcat server"
echo "3: comcast task server"
echo "4: api.everstring.com"
echo "5: prod controller"
echo "6: uat score-job"
echo "7: poc-api"
echo "8: BeiJing local"
echo "9: ETL Server"
echo "10: dev&uat jenkins"
read  input
case $input in
1)  ssh -i   ~/.ssh/liuxiao                 xiaoliu@ec2-54-91-162-79.compute-1.amazonaws.com;; 
2)  ssh -i   ~/.ssh/liuxiao                 xiaoliu@23.22.26.23;;
3)  ssh -i   ~/.ssh/liuxiao                 xiaoliu@54.225.32.27;;
4)  ssh -i   ~/.ssh/liuxiao                 xiaoliu@api.everstring.com;;
5)  ssh -i   ~/.ssh/liuxiao                 xiaoliu@54.89.191.150;;
6)  ssh -i   ~/.ssh/liuxiao                 xiaoliu@uat.everstring.com;;
7)  ssh -i   ~/.ssh/liuxiao                 xiaoliu@54.89.207.30;;
8)  ssh                                     ubuntu@192.168.20.247;; #password:es123456
9)  ssh -i   ~/.ssh/liuxiao                 xiaoliu@107.22.190.189;;
10) ssh -i   ~/.ssh/liuxiao                 xiaoliu@10.50.0.166;;
esac

