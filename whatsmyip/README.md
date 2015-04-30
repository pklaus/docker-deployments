
### Docker deployment of WhatsMyIP

This docker image is a deployment of [WhatsMyIP][].

Get it with

    docker pull pklaus/whatsmyip

Then simply run:

    docker run --name whatsmyip -d -p 8080:8080 pklaus/whatsmyip

and you are running this small "What's my IP" service accessible
on <http://localhost:8080> (and also on external interfaces).

### Resources

* The source for this docker image is to be found on Github:
  [pklaus/docker-deployments → whatsmyip][source].
* More inspiration on how to package a Python web app
  for docker can be found in the blog post
  [Efficient management Python projects dependencies with Docker][ref-1].

[WhatsMyIP]: https://github.com/pklaus/WhatsMyIP
[source]: https://github.com/pklaus/docker-deployments/tree/master/whatsmyip
[ref-1]: http://jpetazzo.github.io/2013/12/01/docker-python-pip-requirements/

