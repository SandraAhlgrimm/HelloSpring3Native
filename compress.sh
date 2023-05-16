#!/usr/bin/env bash

ARTIFACT=demo
MAINCLASS=com.example.DemoApplication
VERSION=0.0.1-SNAPSHOT
UPX_VERSION=4.02
UPX=https://github.com/upx/upx/releases/download/v4.0.2/upx-4.0.2-amd64_linux.tar.xz

GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

echo "Install UPX"
wget https://github.com/upx/upx/releases/download/v$UPX_VERSION/upx-$UPX_VERSION-amd64_linux.tar.xz
tar -xvf upx-$UPX_VERSION-amd64_linux.tar.xz

echo "Compressing $ARTIFACT with UPX"
./upx-$UPX_VERSION-amd64_linux/upx --best target/function/demo

echo "Compressing the folder with ZIP"
cd target/function
zip -r -0 ../native_spring_function.zip .
cd ../..
