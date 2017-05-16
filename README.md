# Snap!

This package contains a simple Dockerfile that you can load to create a mirror of [Snap!](https://snap.berkeley.edu/).
Snap! is written by [@jmoenig](https://github.com/jmoenig/Snap--Build-Your-Own-Blocks) and [@brianharvey](https://github.com/brianharvey/Snap--Build-Your-Own-Blocks).

This package is part of the [educational repository](http://www.coderdojofosso.it/download/) to learn how to write code by blocks. Educational repository is an italian page because the material is used by an italian team of [CoderDojo](https://coderdojo.com/).

You can use it to create a new [mirror](https://snap.berkeley.edu/index.html#mirrors) of Snap!
Alternately, if you need only a stand alone version, you can see this [guide](WithoutDockerfile.md).

If you have any problem, create an issue.

## Intallation

The package is not self-consistent: you have to intall [docker](https://docs.docker.com/engine/installation/) and git before.

Then you can load this repository by git
    
    git clone https://github.com/bilardi/snap-berkeley-edu.git
    
Alternately you can load only Dockerfile
    
    mkdir snap-berkeley-edu
    curl -o snap-berkeley-edu/Dockerfile "https://raw.githubusercontent.com/bilardi/snap-berkeley-edu/master/Dockerfile"
    
Finally you can build the docker container

    cd snap-berkeley-edu-docker
    docker build -t snap-berkeley-edu-apache2 .
    docker run -dit -p 8080:80 --name snap-berkeley-edu snap-berkeley-edu-apache2

You can use also a different port instead 8080 if in your local it is busy yet.

## Usage

Snap! is a web interface: if you have installed the docker container in your
- client, you can digit on the browser

   http://localhost:8080

- server, you have to open the port 8080 on your server, to get your server IP and you can digit on a client's browser in the same net

   http://your.ser.ver.IP:8080

## License

This package is released under the MIT license.  See [LICENSE](LICENSE) for details.
