#! /bin/bash

if [ -f /.dockerenv ]; then
	echo "I am inside a container!"
             
else
   	echo "I am ouside the container"

        cat > ./Dockerfile_hello <<-_EOF
	FROM debian
	COPY $0 /
	ENTRYPOINT ["bash","$0"]
	_EOF

	docker build -t hello -f ./Dockerfile_hello .
 	docker run --name="hello_world" hello
fi

