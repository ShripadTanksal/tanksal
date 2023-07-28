# our image will be created using python
FROM python

# execute the following command at the time of building the image
RUN pip install flask

# set the current working directory
WORKDIR /src

# copy the program file
# here second parameter (.) represents the working directory (/src)
# copy everything from current directory of local machine to /src of image
COPY . .

# expose the port 4000 as the flask server will listen on port 4000
EXPOSE 4000

# run the command to start the server
# execute this command at the time of starting the container
# every image needs one and only one CMD command
# CMD must be the last command in the Dockerfile
CMD python server.py
