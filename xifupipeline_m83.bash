#!/bin/bash

xmldir=/home/ruben/software/simput-2.4.5/share/sixte/instruments/athena-xifu/

xifupipeline XMLFile=${xmldir}xifu_baseline.xml \
	AdvXml=${xmldir}xifu_detector_lpa_75um_AR0.5_pixoffset_mux40_pitch275um.xml \
	Exposure=86000 \
	RA=204.254 Dec=-29.865 \
	EvtFile=m83_xifu_low_evt.fits \
	Simput=m83_xifu_low.simput clobber=yes

makespec \
EvtFile="m83_xifu_low_evt.fits" \
Spectrum=m83_xifu_low_spec.pha \
EventFilter="RA>204.2456667 && RA<204.2623333 && Dec>-29.87333333 && Dec<-29.85666667" \
RSPPath=${xmldir} clobber=yes


imgev \
EvtFile=m83_xifu_low_evt.fits \
Image=m83_xifu_low_img.fits \
NAXIS1=80 NAXIS2=80 \
CRVAL1=204.254 CRVAL2=-29.865 \
CRPIX1=40.5 CRPIX2=40.5 \
CDELT1=-0.0011888874248538006 CDELT2=0.0011888874248538006 \
CoordinateSystem=0 Projection=TAN clobber=yes


