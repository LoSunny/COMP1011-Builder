# COMP1011-Builder

The course uses the MinGW compiler. However, not everyone uses a Windows computer. Thus I created a simple Docker image to let everyone test the code without making a Windows virtual machine.

Usage: `docker run -it -v $PWD:/app --rm quay.io/sunnylo/comp1011-builder yourCPPFile.cpp`
