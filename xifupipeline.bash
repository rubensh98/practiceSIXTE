#!/bin/bash

xmldir=/home/ruben/software/simput-2.4.5/share/sixte/instruments/athena-xifu/

xifupipeline XMLFile=${xmldir}xifu_baseline.xml \
	AdvXml=${xmldir}xifu_detector_lpa_75um_AR0.5_pixoffset_mux40_pitch275um.xml \
	Exposure=86000 \
	RA=204.254 Dec=-29.865 \
	EvtFile=m83_xifu_low_evt.fits \
	Simput=m83_xifu_low.simput clobber=yes
	
