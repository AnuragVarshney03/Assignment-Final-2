#!/bin/bash

#Script for creation of docker images that take the data from the build folder

Docker_Image_Name="anurag-assignment-2-website"

#moving to the loction where the docker file is there
cd ..
cd reactjs-demo/

#Command for building docker images
docker build -t $Docker_Image_Name .

#to check if the command was successfully executed
if [ $? -eq 0 ]; then
  echo "###########################Docker image built successfully######################"
else
  echo "###################Failed to build Docker image################"
fi

