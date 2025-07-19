Run the commands in the following order, do the preparation work specified in the comments first:
1. ./build_push_docker_image.sh           #change my dockerhub username to yours, you will be prompted for password
2. ./deploy.sh                            #change my image prefix username to yours in the flask-deployment.yml file
3. ./access.app.sh                        #follow the instruction in the output
4. ./teardown.sh                          #you can tear down the app when done
