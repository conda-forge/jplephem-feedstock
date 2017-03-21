#!/bin/bash

curl -O https://naif.jpl.nasa.gov/pub/naif/generic_kernels/spk/planets/a_old_versions/de421.bsp
curl -O https://naif.jpl.nasa.gov/pub/naif/generic_kernels/spk/planets/de430.bsp
curl -O https://naif.jpl.nasa.gov/pub/naif/generic_kernels/spk/planets/a_old_versions/de405.bsp
curl -O ftp://ssd.jpl.nasa.gov/pub/eph/planets/test-data/430/testpo.430

python -m unittest discover jplephem.test
python -m jplephem.jpltest
