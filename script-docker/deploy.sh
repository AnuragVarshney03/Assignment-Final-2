#!/bin/bash

# Getting image name and tag name
Image_Name="anurag-assignment-2-website"

#version tag
Image_Tag="latest"


# Running the container
docker run -d -p 80:80 $Image_Name:$Image_Tag

#Checking if container is running
if [ $? -eq 0 ]; then
  echo "*****************Successfully started container **************"
else
  echo "************Failed to start container**********************"
fi
