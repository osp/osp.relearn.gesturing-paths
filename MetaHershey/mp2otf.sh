Transforms a given mpfile into a an OTF-file

svgdir="$1_svg" # Temporary dir we create to store the SVG files
mpfile="$1.mp"

mkdir $svgdir
# cp "$svgdir/$mpfile"
cd $svgdir

mpost "../$mpfile" # Fontname
line="inkscape"
for svgfile in *.svg; do
	echo $svgfile
# 	inkscape $svgfile --verb=FileSave --verb=FileClose
	inkscape $svgfile --verb=EditSelectAll --verb=SelectionBreakApart --verb=SelectionUnGroup --verb=EditSelectAll --verb=StrokeToPath --verb=FileSave --verb=FileClose
done

#inkscape $line

cd ".."

python svg2otf.py $1 $svgdir

rm -rf $svg