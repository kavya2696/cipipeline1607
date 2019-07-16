from ubuntu
label maintainer all-images@devops.com
arg image_variable="local"
env ora_port=1521
env ora_host="localhost"
run mkdir /code
copy sample.sh /code/Sample.sh
run chmod +x /code/Sample.sh
run echo "Building an Image.."
run echo $image_variables
workdir /code
cmd sh /code/Sample.sh
