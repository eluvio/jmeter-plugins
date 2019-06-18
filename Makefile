.PHONY: jmeter-plugins

all:
	docker build --squash -t docker.tecalliance.services/jmeter-plugins .

push:
	docker push docker.tecalliance.services/jmeter-plugins

run:
	docker run -e DISPLAY=host.docker.internal:0 -it --rm docker.tecalliance.services/jmeter-plugins /bin/sh
