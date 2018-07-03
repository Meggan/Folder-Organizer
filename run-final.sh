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

        mkdir ../AR/Atlanta/$d/;
        mv *ATL*INV* ../AR/Atlanta/$d/;

        mkdir ../RA/Atlanta/$d/;
        mv *ATL*  ../RA/Atlanta/$d/;
#EBK
        mkdir ../AR/Atlanta/$d/;
        mv *EBK*INV* ../AR/Atlanta/$d/;

        mkdir ../RA/Atlanta/$d/;
        mv *EBK*  ../RA/Atlanta/$d/;

#DEM
        mkdir ../AR/Ontario/$d/;
        mv *DEM*INV* ../AR/Ontario/$d/;

        mkdir ../RA/Ontario/$d/;
        mv *DEM*  ../RA/Ontario/$d/;
#MCG
        mkdir ../AR/West/$d/;
        mv *MCG*INV* ../AR/West/$d/;

        mkdir ../RA/West/$d/;
        mv *MCG*  ../RA/West/$d/;
    cd ../
done

#Clean empty folders
find . -empty -type d -delete
