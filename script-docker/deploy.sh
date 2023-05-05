#!/bin/bash

# Setting old and new image name, where old image name is  one that is created using build.sh
New_Image_Name="anuragvarshney03/assignment-02"
Old_Image_Name="anurag-assignment-2-website"

#version tag
New_Image_Tag="v1"
Old_Image_Tag="latest"

# Tag the image
docker tag $Old_Image_Name:$Old_Image_Tag $New_Image_Name:$New_Image_Tag 

# Push the image to Docker Hub
docker push $New_Image_Name:$New_Image_Tag


#Checking execution of docker push command
if [ $? -eq 0 ]; then
  echo "*****************Successfully pushed image **************"
else
  echo "************Failed to push Docker image**********************"
fi
