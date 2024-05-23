#!/bin/bash

depends=$(sudo apt-cache depends texlive-full | grep "Depends: " | awk '{print $2}')

for dep in ${depends}; do
	sudo apt-get install -y ${dep}
done
