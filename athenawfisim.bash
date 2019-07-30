#! /bin/bash

xmldir=$SIXTE/share/sixte/instruments/athena-wfi/wfi_wo_filter_15row

xml0=${xmldir}/ld_wfi_ff_chip0.xml
xml1=${xmldir}/ld_wfi_ff_chip1.xml
xml2=${xmldir}/ld_wfi_ff_chip2.xml
xml3=${xmldir}/ld_wfi_ff_chip3.xml

RA=204.254
Dec=-29.865

${SIXTE}/bin/athenawfisim \
XMLFile0=${xml0} XMLFile1=${xml1} XMLFile2=${xml2} XMLFile3=${xml3} \
RA=${RA} Dec=${Dec} \
Attitude=newCDFS.att \
Prefix=sim_ \
Simput=m83.fits \
EvtFile=evt_m83.fits \
Exposure=43000 \
clobber=yes

ftmerge \
sim_chip0_evt_m83.fits,sim_chip1_evt_m83.fits,sim_chip2_evt_m83l.fits,sim_chip3_evt_m83.fits \
sim_att_combined_evt_m83.fits clobber=yes
rm sim_chip*
