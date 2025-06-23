#!/bin/bash

#GET THE IMAGE WITH APPTAINER

apptainer pull docker://gitlab-registry.in2p3.fr/cta-lapp/cours/introduction_cpp_algorithms/introduction_cpp_algorithms_alpine_micromamba_code_server:latest

#CREATING BUILD DIRECTORY

mkdir build

#LAUNCHING CONTAINER FROM APPTAINER IMAGE ON BUILD DIRECTORY

sudo apptainer run --bind build:/build --writable-tmpfs introduction_cpp_algorithms_alpine_micromamba_code_server_latest.sif
