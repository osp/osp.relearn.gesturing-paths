import fontforge
import glob
import string
import re
from sys import argv

name = argv[1]
path = argv[2]

font = fontforge.font()
font.fontname = name
font.fondname = name
font.fullname = name
font.familyname = name

for outlinefile in glob.glob ('{0}/*.svg'.format (path)):
	glyph = font.createChar (-1, charstring[counter])
	glyph.importOutlines(outlinefile)
	counter += 1 

	if counter > len(charstring):
		break
		
font.save ("{0}.sfd".format (name))
font.generate ("{0}.otf".format (name)) 