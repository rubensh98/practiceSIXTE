#!/bin/bash

. $SIXTE/bin/sixte-install.sh

RA=204.254
Dec=-29.865

simputfile Simput="m83.fits" \
    RA=${RA} \
    Dec=${Dec} \
    srcFlux=5.9143e-12 \
        Emin=0.35 \
        Emax=8. \
    Elow=0.35 \
    Eup=8. \
    XSPECFile=m83.xcm \
    ImageFile=m83_350_1000.fits \
    clobber=yes
