#!/bin/bash
fecha=`date +%Y%m`
if [ ! -z $1 ]
then
    fecha=$1
fi

# exportar a PNG
inkscape carteles/$fecha-pythoncabal.svg -w 640 -e carteles/${fecha}-pythoncabal.png

# convertir a curvas
#!/bin/bash
orig=carteles/${fecha}-pythoncabal.svg
curvas=carteles/${fecha}-pythoncabal-curvas.svg
cp $orig $curvas
inkscape $curvas \
     --verb=UnlockAllInAllLayers \
     --verb=UnhideAllInAllLayers \
     --verb=EditSelectAllInAllLayers \
     --verb=ObjectToPath \
     --verb=FileSave \
     --verb=FileQuit

# copiar archivos principales
rm pythoncabal-web.png pythoncabal.svg
cp carteles/$fecha-pythoncabal-curvas.svg pythoncabal.svg
cp carteles/$fecha-pythoncabal.png pythoncabal-web.png
