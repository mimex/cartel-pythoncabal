#!/bin/bash
scriptdir=`dirname $0`
fecha=`date +%Y%m`
plantilla="../plantillas/plantilla-cartel.svg"
nuevoCartel="../carteles/${fecha}-pythoncabal.svg"
cd $scriptdir
if [ -e $nuevoCartel ]
then
    echo "El cartel ${nuevoCartel} ya existe"
else
    cp $plantilla $nuevoCartel
    inkscape $nuevoCartel
fi
