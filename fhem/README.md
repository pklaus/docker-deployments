## FHEM in Docker

### Runnning this image

First, get the default config file from the image:

```
fhem_container=$(docker create pklaus/fhem:5.8)
docker cp $fhem_container:/opt/fhem/fhem.cfg - > fhem.cfg
docker rm -v $fhem_container
```

To run FHEM in Docker, it's important to have the line
`attr global nofork 1`
in your fhem.cfg to prevent FHEM to fork into background.

Next, create the volume to keep your logs:

```
docker volume create fhem-log
```

Now you're ready to run FHEM with this command:

```
docker run -d \
  --restart=always \
  --name fhem \
  -p 8083:8083 \
  -v fhem-log:/opt/fhem/log \
  -v $(pwd)/fhem.cfg:/opt/fhem/fhem.cfg \
  pklaus/fhem:5.8
```

Go to http://localhost:8083 of your host computer for the FHEM user interface.

To see FHEM's application log output, run:

```
docker logs fhem
```
