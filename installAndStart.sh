#!/bin/bash

cd $WORKINGDIR
go-wrapper download
go-wrapper install
#check and install gin if missing i.e. go directory was overriden or mounted
go get -v github.com/codegangsta/gin
exec gin "$@"
