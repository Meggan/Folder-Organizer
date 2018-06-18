
#Script for File movement for multiple folders in a directory

# Loop through all folders in the directory 
# In each folder
# Create two folders : AR & RA
# RA : Has a folder named after the parent folder (ex. 20030106) and 3 sub folders:
# Ontario, West, Atlanta
# AR : Has 3 subfolders : Ontario, West, Atlanta

for d in *; do
 cd $d
 mkdir -p RA/$d/Ontario
 mkdir -p RA/$d/West
 mkdir -p RA/$d/Atlanta
 mkdir -p AR/Ontario
 mkdir -p AR/Atlanta
 mkdir -p AR/West
 cd -
done

# Files with substring INV go into RA
# Files with 
    DEM > Ontario, 
    MCG > West, 
    ATL or EBK > Atlanta
# ** INV files are priority

for d in *; do
 cd $d
 mv *INV* RA/$d/
 mv *DEM* AR/Ontario/
 mv *MCG* AR/West/
 mv *ATL* AR/Atlanta/
 mv *EBK* AR/Atlanta/
 cd ../ 
done

# If there are INV in RA/$d/ sort based on region too
for d in *; do
 cd $d/RA/$d
 mv *DEM* Ontario/
 mv *MCG* West/
 mv *ATL* Atlanta/
 mv *EBK* Atlanta/
 cd ../../../
done


# Delete all empty directories
for d in *; do
 cd $d/RA/$d
 find . -empty -type d -delete
 cd ../
 find . -empty -type d -delete
 cd ../
 find . -empty -type d -delete
 cd ../
done
