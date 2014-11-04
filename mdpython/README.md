
### Docker deployment of mdpython

This docker image is a deployment of [mdpython][].

Get it with

    docker pull pklaus/mdpython

Then simply run:

    docker run -d -p 8080:8080 pklaus/mdpython

and you will be able to access status information
from `/proc/mdstat` about your `mdadm` software
raid arrays at <http://localhost:8080>.

### Resources

* More inspiration on how to build a Python web app
  and package it for docker can be found in the blog
  post [Efficient management Python projects dependencies with Docker][ref-1]

[mdpython]: https://github.com/pklaus/mdpython
[ref-1]: http://jpetazzo.github.io/2013/12/01/docker-python-pip-requirements/

