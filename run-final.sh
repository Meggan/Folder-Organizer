# New and "Final" Design that user requested

# Create folders in AR & RA
mkdir -p AR/Atlanta
mkdir -p AR/West
mkdir -p AR/Ontario
mkdir -p RA/Atlanta
mkdir -p RA/West
mkdir -p RA/Ontario

#For every file pertaining to sections, create a folder with the date and move the files over to there
#ATL
for d in *; do
    cd $d

    if [ -f *ATL*INV* ]; then 
        mkdir ../AR/Atlanta/$d/;
        mv *ATL*INV* ../AR/Atlanta/$d/;
        echo "*ATL*INV* moved"; fi

    if [ -f *ATL* ]; then 
        mkdir ../RA/Atlanta/$d/;
        mv *ATL*  ../RA/Atlanta/$d/;
        echo "*ATL* moved"; fi
#EBK
    if [ -f *EBK*INV* ]; then 
        mkdir ../AR/Atlanta/$d/;
        mv *EBK*INV* ../AR/Atlanta/$d/;
        echo "*EBK*INV* moved"; fi

    if [ -f *EBK* ]; then 
        mkdir ../RA/Atlanta/$d/;
        mv *EBK*  ../RA/Atlanta/$d/;
        echo "*EBK* moved"; fi

#DEM
    if [ -f *DEM*INV* ]; then 
        mkdir ../AR/Ontario/$d/;
        mv *DEM*INV* ../AR/Ontario/$d/;
        echo "*DEM*INV* moved"; fi

    if [ -f *DEM* ]; then 
        mkdir ../RA/Ontario/$d/;
        mv *DEM*  ../RA/Ontario/$d/;
        echo "*DEM* moved"; fi
#MCG
    if [ -f *MCG*INV* ]; then 
        mkdir ../AR/West/$d/;
        mv *MCG*INV* ../AR/West/$d/;
        echo "*MCG*INV* moved"; fi

    if [ -f *MCG* ]; then 
        mkdir ../RA/West/$d/;
        mv *MCG*  ../RA/West/$d/;
        echo "*MCG* moved"; fi
    cd ../
done

#Clean empty folders
find . -empty -type d -delete
