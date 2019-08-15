FROM debian
COPY ./build.sh /
ENTRYPOINT ["bash","/hello_world.py"]
