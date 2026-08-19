#!/bin/bash

<<task
Deploy a Django app
and handle the code for errors
task

code_clone() {
    echo "Cloning the Django app..."
    git clone https://github.com/LondheShubham153/django-notes-app
}

install_requirements() {
    echo "Installing dependencies..."
    sudo apt-get update
    sudo apt-get install docker.io nginx -y
}

required_restarts() {
    echo "Enabling services..."

    sudo chown $USER /var/run/docker.sock
    sudo systemctl enable docker
    sudo systemctl enable nginx
}

deploy() {
    echo "Building Docker image..."
    docker build -t notes-app .

    echo "Starting Docker container..."
    docker run -d -p 8000:8000 notes-app:latest
}

echo "*************************"
echo "Deployment started"
echo "*************************"

if ! code_clone; then
        echo " the code directory already exist"
        cd django-notes-app
fi

if ! install_requirements; then
        echo " the required packages are not installed"
        exit 1
fi

if ! required_restarts; then
    echo " the services are not enabled"
fi

if ! deploy; then
    echo " the deployment failed"
fi

echo "*************************"
echo "Deployment completed"
echo "*************************"