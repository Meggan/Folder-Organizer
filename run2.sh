# Change current file structure to another one
# Root 
# AR & RA
# Regions
# Date
# File
### AR = INV ###

## NEW ##
# Create folders in AR & RA
mkdir -p AR/Atlanta
mkdir -p AR/West
mkdir -p AR/Ontario
mkdir -p RA/Atlanta
mkdir -p RA/West
mkdir -p RA/Ontario


## OLD ##
#Create Date folder within Region folder for movement
for d in *; do
    cd $d
    mkdir AR/Atlanta/$d
    mkdir RA/$d/Atlanta/$d
    mkdir AR/Ontario/$d
    mkdir RA/$d/Ontario/$d
    mkdir AR/West/$d
    mkdir RA/$d/West/$d
    cd ../
done

## OLD ##
# Move Files into Date Folder
for d in *; do
    mv $d/AR/Atlanta/*ATL* $d/AR/Atlanta/$d/
    mv $d/AR/Atlanta/*EBK* $d/AR/Atlanta/$d/

    mv $d/AR/Ontario/*DEM* $d/AR/Ontario/$d/

    mv $d/AR/West/*MCG* $d/AR/West/$d/

    mv $d/RA/$d/Atlanta/*ATL*  $d/RA/$d/Atlanta/$d/
    mv  $d/RA/$d/Atlanta/*EBK*  $d/RA/$d/Atlanta/$d/

    mv $d/RA/$d/Ontario/*DEM* $d/RA/$d/Ontario/$d/

    mv $d/RA/$d/West/*MCG* $d/RA/$d/West/$d/
done

## OLD TO NEW ##
# Move all RA Dates to AR Dates

for d in *; do
    mv  $d/AR/Atlanta/*  RA/Atlanta
    mv  $d/AR/Ontario/*  RA/Ontario
    mv  $d/AR/West/*   RA/West
done

## OLD TO NEW ##
# Move all AR Dates to RA Dates

for d in *; do
    mv  $d/RA/$d/Atlanta/*  AR/Atlanta
    mv  $d/RA/$d/Ontario/*  AR/Ontario
    mv  $d/RA/$d/West/*   AR/West
done

## Clean ##
## Delete all empty directories from child first##
for d in *; do
    cd $d/AR
    find . -empty -type d -delete
    cd ../
    find . -empty -type d -delete
    cd ../
    cd $d/RA
    find . -empty -type d -delete
    cd ../
    find . -empty -type d -delete
    cd ../
done
