# docker-kurento-media-server

Providing kurento media server as a container

## Run kurento media server

Run the media server and expose the websocket on local port 8888:

    docker run --rm -d -p 8888:8888 -t gortazar/kurento-media-server

## Get help about kurento media server

    docker run --rm -t gortazar/kurento-media-server --help

## Testing the image

Download and run the [hello world](http://www.kurento.org/docs/current/tutorials/java/tutorial-1-helloworld.html) kurento tutorial

    wget http://builds.kurento.org/release/6.0.0/kurento-hello-world-6.0.0.zip
    unzip kurento-hello-world-6.0.0.zip -d kurento-hello-world
    cd kurento-hello-world/lib
    java -jar -Dkms.ws.uri=ws://localhost:8888/kurento

The tutorial starts a web application that is available by default at http://localhost:8080. Click the start button and allow sharing camera and microphone with the application. On the left you'll see what the camera is capturing, this is sent to the media server. On the right you should see the same video as it is sent back by the media server. In this tutorial the video is returned as is. You can check for more tutorials at http://www.kurento.org/docs/current/tutorials.html.
