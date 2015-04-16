#!/bin/bash

cd /go/src/app
go-wrapper download
go-wrapper install
exec gin