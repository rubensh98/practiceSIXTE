#!/bin/bash

. $SIXTE/bin/sixte-install.sh

RA=31.448
Dec=64.838

simputfile Simput="3c58_low.fits" \
    RA=${RA} \
    Dec=${Dec} \
    srcFlux=1.2893e-12 \
        Emin=0.5 \
        Emax=1. \
    Elow=0.5 \
    Eup=1. \
    XSPECFile=pulsar.xcm \
    ImageFile=3c58_500-1000.fits \
    clobber=yes


    
