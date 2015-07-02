FROM ubuntu:15.04
MAINTAINER Max Neunhoeffer <max@arangodb.com>

# for local installation, uncomment
ADD ./DBlatTest /DBlatTest

# add scripts to install and run ArangoDB
ADD ./scripts /scripts

# add HELP file
ADD ./HELP.md /HELP.md

# install ubuntu package
RUN ./scripts/install.sh

# compile Mongo driver and test programs
RUN ./scripts/install.sh

# start script
CMD ["/bin/bash"]
